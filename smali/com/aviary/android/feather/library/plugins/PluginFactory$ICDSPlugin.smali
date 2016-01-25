.class public interface abstract Lcom/aviary/android/feather/library/plugins/PluginFactory$ICDSPlugin;
.super Ljava/lang/Object;
.source "PluginFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/plugins/PluginFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICDSPlugin"
.end annotation


# virtual methods
.method public abstract getItemAt(I)Lcom/aviary/android/feather/library/services/CDSPackage$CDSEntry;
.end method

.method public abstract installAndLoad(Landroid/content/Context;Lcom/aviary/android/feather/library/services/PluginService;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aviary/android/feather/library/services/PluginService$PluginException;
        }
    .end annotation
.end method
