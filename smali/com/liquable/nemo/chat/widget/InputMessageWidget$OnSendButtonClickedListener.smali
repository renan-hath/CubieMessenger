.class public interface abstract Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;
.super Ljava/lang/Object;
.source "InputMessageWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/widget/InputMessageWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSendButtonClickedListener"
.end annotation


# virtual methods
.method public abstract isValid(Ljava/lang/String;Landroid/widget/EditText;)Z
.end method

.method public abstract sendWithSecretText(Ljava/lang/String;)V
.end method

.method public abstract sendWithText(Ljava/lang/String;)V
.end method
