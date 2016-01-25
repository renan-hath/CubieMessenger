.class public interface abstract Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
.super Ljava/lang/Object;
.source "PluginFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/plugins/PluginFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPlugin"
.end annotation


# virtual methods
.method public abstract getPackageLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract size()I
.end method
