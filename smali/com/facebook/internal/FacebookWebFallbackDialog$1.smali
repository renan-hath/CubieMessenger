.class final Lcom/facebook/internal/FacebookWebFallbackDialog$1;
.super Ljava/lang/Object;
.source "FacebookWebFallbackDialog.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FacebookWebFallbackDialog;->presentWebFallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$Callback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field final synthetic val$callback:Lcom/facebook/widget/FacebookDialog$Callback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$Callback;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/internal/FacebookWebFallbackDialog$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/FacebookWebFallbackDialog$1;->val$appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    iput-object p3, p0, Lcom/facebook/internal/FacebookWebFallbackDialog$1;->val$callback:Lcom/facebook/widget/FacebookDialog$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 5
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, "dummyIntent":Landroid/content/Intent;
    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "values":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/facebook/internal/FacebookWebFallbackDialog$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/internal/FacebookWebFallbackDialog$1;->val$appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    iget-object v3, p0, Lcom/facebook/internal/FacebookWebFallbackDialog$1;->val$appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 71
    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/internal/FacebookWebFallbackDialog$1;->val$callback:Lcom/facebook/widget/FacebookDialog$Callback;

    .line 68
    invoke-static {v1, v2, v3, v0, v4}, Lcom/facebook/widget/FacebookDialog;->handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    .line 74
    return-void
.end method
