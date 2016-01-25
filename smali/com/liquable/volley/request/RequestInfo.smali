.class public interface abstract Lcom/liquable/volley/request/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# virtual methods
.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPort()Ljava/lang/Integer;
.end method

.method public abstract getPriority()Lcom/android/volley/Request$Priority;
.end method

.method public abstract isAllowCache()Z
.end method

.method public abstract isHttpGet()Z
.end method

.method public abstract isHttpPost()Z
.end method

.method public abstract isJsonBody()Z
.end method

.method public abstract isRequireSecure()Z
.end method
