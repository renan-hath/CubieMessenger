.class public interface abstract Lcom/liquable/nemo/http/INemoHttpService;
.super Ljava/lang/Object;
.source "INemoHttpService.java"


# virtual methods
.method public abstract get(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/liquable/nemo/http/NemoHttpResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/liquable/nemo/http/NemoHttpResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
