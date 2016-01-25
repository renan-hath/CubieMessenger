.class Lcom/liquable/nemo/friend/FriendListView$2;
.super Ljava/lang/Object;
.source "FriendListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/FriendListView;->build(Lcom/liquable/nemo/util/ImageLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/FriendListView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/FriendListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/FriendListView;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/liquable/nemo/friend/FriendListView$2;->this$0:Lcom/liquable/nemo/friend/FriendListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setHideContactList(Z)V

    .line 108
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendListReload()V

    .line 109
    return-void
.end method
