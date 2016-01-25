.class public interface abstract Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;
.super Ljava/lang/Object;
.source "FacebookSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/facebook/FacebookSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFacebookPublishSessionCallback"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError()V
.end method

.method public abstract onOpened(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;)V
.end method
