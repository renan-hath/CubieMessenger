.class Lcom/liquable/nemo/targetedintent/InstagramInviteAction$1;
.super Ljava/lang/Object;
.source "InstagramInviteAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/targetedintent/InstagramInviteAction;->generateInstagramBitmapFile(Landroid/content/Context;)Ljava/io/File;
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
    .line 53
    iput-object p1, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$1;->this$0:Lcom/liquable/nemo/targetedintent/InstagramInviteAction;

    iput-object p2, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 56
    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/liquable/nemo/profile/ProfileSettingActivity;->createIntentFromInviteFriendDoSetCover(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/InstagramInviteAction$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method
