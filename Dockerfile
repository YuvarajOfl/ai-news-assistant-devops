Copy

# ─────────────────────────────────────────────
#  Stage 1 – install dependencies
# ─────────────────────────────────────────────
FROM python:3.11-slim AS builder
 
WORKDIR /app
 
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
 
# ─────────────────────────────────────────────
#  Stage 2 – final runtime image
# ─────────────────────────────────────────────
FROM python:3.11-slim
 
WORKDIR /app
 
# Copy only installed packages from builder
COPY --from=builder /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages
COPY --from=builder /usr/local/bin /usr/local/bin
 
# Copy application source code
COPY app/ .
 
# Streamlit configuration
ENV STREAMLIT_BROWSER_GATHER_USAGE_STATS=false \
    STREAMLIT_SERVER_HEADLESS=true \
    STREAMLIT_SERVER_PORT=8501 \
    STREAMLIT_SERVER_ADDRESS=0.0.0.0
 
# Non-root user for security
RUN useradd -m -u 1000 appuser && chown -R appuser:appuser /app
USER appuser
 
EXPOSE 8501
 
HEALTHCHECK --interval=30s --timeout=10s --start-period=20s --retries=3 \
    CMD curl --fail http://localhost:8501/_stcore/health || exit 1
 
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
 
