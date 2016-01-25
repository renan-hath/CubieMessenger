.class Lcom/liquable/nemo/share/ShareMediaActivity$2;
.super Ljava/lang/Object;
.source "ShareMediaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/ShareMediaActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/ShareMediaActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/ShareMediaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/ShareMediaActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/liquable/nemo/share/ShareMediaActivity$2;->this$0:Lcom/liquable/nemo/share/ShareMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 67
    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaActivity$2;->this$0:Lcom/liquable/nemo/share/ShareMediaActivity;

    # getter for: Lcom/liquable/nemo/share/ShareMediaActivity;->shareMediaAdapter:Lcom/liquable/nemo/share/ShareMediaAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/share/ShareMediaActivity;->access$100(Lcom/liquable/nemo/share/ShareMediaActivity;)Lcom/liquable/nemo/share/ShareMediaAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/share/ShareMediaAdapter;->getCheckedMediaInfos()Ljava/util/Set;

    move-result-object v0

    .line 68
    .local v0, "checkedMediaInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/liquable/nemo/android/provider/MediaInfo;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaActivity$2;->this$0:Lcom/liquable/nemo/share/ShareMediaActivity;

    const v3, 0x7f0d0468

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaActivity$2;->this$0:Lcom/liquable/nemo/share/ShareMediaActivity;

    const-class v3, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "SELECT_PICTURE_ID"

    new-array v2, v4, [Lcom/liquable/nemo/android/provider/MediaInfo;

    .line 77
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    .line 76
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaActivity$2;->this$0:Lcom/liquable/nemo/share/ShareMediaActivity;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/share/ShareMediaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
