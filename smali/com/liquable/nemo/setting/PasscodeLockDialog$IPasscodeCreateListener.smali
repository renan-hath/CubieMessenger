.class public interface abstract Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;
.super Ljava/lang/Object;
.source "PasscodeLockDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/PasscodeLockDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPasscodeCreateListener"
.end annotation


# virtual methods
.method public abstract onCreatePasscode(Ljava/lang/String;)V
.end method

.method public abstract onFailToCreatePasscode()V
.end method
