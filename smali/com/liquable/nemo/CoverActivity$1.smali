.class Lcom/liquable/nemo/CoverActivity$1;
.super Ljava/lang/Object;
.source "CoverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/CoverActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/CoverActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/CoverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/CoverActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/liquable/nemo/CoverActivity$1;->this$0:Lcom/liquable/nemo/CoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 56
    const-string/jumbo v2, "package:com.liquable.nemo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .local v1, "uninstallIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/liquable/nemo/CoverActivity$1;->this$0:Lcom/liquable/nemo/CoverActivity;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/CoverActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object v2, p0, Lcom/liquable/nemo/CoverActivity$1;->this$0:Lcom/liquable/nemo/CoverActivity;

    invoke-virtual {v2}, Lcom/liquable/nemo/CoverActivity;->finish()V

    .line 60
    return-void
.end method
