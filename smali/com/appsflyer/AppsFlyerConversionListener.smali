.class public interface abstract Lcom/appsflyer/AppsFlyerConversionListener;
.super Ljava/lang/Object;
.source "AppsFlyerConversionListener.java"


# virtual methods
.method public abstract onAppOpenAttribution(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInstallConversionDataLoaded(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInstallConversionFailure(Ljava/lang/String;)V
.end method
