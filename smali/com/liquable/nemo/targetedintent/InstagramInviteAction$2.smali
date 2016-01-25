.class Lcom/liquable/nemo/targetedintent/InstagramInviteAction$2;
.super Ljava/lang/Object;
.source "InstagramInviteAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 88
    iput-object p1, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$2;->this$0:Lcom/liquable/nemo/targetedintent/InstagramInviteAction;

    iput-object p2, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$2;->this$0:Lcom/liquable/nemo/targetedintent/InstagramInviteAction;

    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/liquable/nemo/targetedintent/InstagramInviteAction;->onPositiveButtonClick(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/targetedintent/InstagramInviteAction;->access$000(Lcom/liquable/nemo/targetedintent/InstagramInviteAction;Landroid/content/Context;)V

    .line 92
    return-void
.end method
