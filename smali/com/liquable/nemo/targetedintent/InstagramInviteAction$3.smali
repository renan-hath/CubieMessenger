.class Lcom/liquable/nemo/targetedintent/InstagramInviteAction$3;
.super Ljava/lang/Object;
.source "InstagramInviteAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/targetedintent/InstagramInviteAction;->startActivity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/targetedintent/InstagramInviteAction;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/targetedintent/InstagramInviteAction;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/targetedintent/InstagramInviteAction;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$3;->this$0:Lcom/liquable/nemo/targetedintent/InstagramInviteAction;

    iput-object p2, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$3;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 104
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    const-string/jumbo v1, "#cubie"

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$3;->val$context:Landroid/content/Context;

    const v2, 0x7f0d013e

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 106
    return-void
.end method
