.class Lcom/liquable/nemo/external/FallbackHandler$2;
.super Ljava/lang/Object;
.source "FallbackHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/external/FallbackHandler;->handle(Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/external/FallbackHandler;

.field final synthetic val$activity:Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/external/FallbackHandler;Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/external/FallbackHandler;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/external/FallbackHandler$2;->this$0:Lcom/liquable/nemo/external/FallbackHandler;

    iput-object p2, p0, Lcom/liquable/nemo/external/FallbackHandler$2;->val$activity:Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/external/FallbackHandler$2;->val$activity:Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;

    iget-object v1, p0, Lcom/liquable/nemo/external/FallbackHandler$2;->val$activity:Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/ExternalIntents;->createGooglePlayIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 27
    iget-object v0, p0, Lcom/liquable/nemo/external/FallbackHandler$2;->val$activity:Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/external/ExternalUrlHandlerActivity;->finish()V

    .line 28
    return-void
.end method
