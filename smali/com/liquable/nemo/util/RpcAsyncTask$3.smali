.class Lcom/liquable/nemo/util/RpcAsyncTask$3;
.super Ljava/lang/Object;
.source "RpcAsyncTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/RpcAsyncTask;->onPostExecute(Lcom/liquable/nemo/util/ServiceResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/RpcAsyncTask;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/RpcAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 167
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask$3;, "Lcom/liquable/nemo/util/RpcAsyncTask$3;"
    iput-object p1, p0, Lcom/liquable/nemo/util/RpcAsyncTask$3;->this$0:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask$3;, "Lcom/liquable/nemo/util/RpcAsyncTask$3;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->UPGRADE:Lcom/liquable/nemo/client/home/CubieDownloadUrl;

    .line 172
    invoke-virtual {v2}, Lcom/liquable/nemo/client/home/CubieDownloadUrl;->getBitlyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/util/RpcAsyncTask$3;->this$0:Lcom/liquable/nemo/util/RpcAsyncTask;

    # getter for: Lcom/liquable/nemo/util/RpcAsyncTask;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->access$000(Lcom/liquable/nemo/util/RpcAsyncTask;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method
