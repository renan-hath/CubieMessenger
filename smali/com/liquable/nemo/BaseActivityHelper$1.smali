.class Lcom/liquable/nemo/BaseActivityHelper$1;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/BaseActivityHelper;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/BaseActivityHelper;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/BaseActivityHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/BaseActivityHelper;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/liquable/nemo/BaseActivityHelper$1;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 218
    const-string/jumbo v2, "package:com.liquable.nemo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 219
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    .local v1, "uninstallIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/liquable/nemo/BaseActivityHelper$1;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 221
    iget-object v2, p0, Lcom/liquable/nemo/BaseActivityHelper$1;->this$0:Lcom/liquable/nemo/BaseActivityHelper;

    # getter for: Lcom/liquable/nemo/BaseActivityHelper;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/liquable/nemo/BaseActivityHelper;->access$000(Lcom/liquable/nemo/BaseActivityHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 222
    return-void
.end method
