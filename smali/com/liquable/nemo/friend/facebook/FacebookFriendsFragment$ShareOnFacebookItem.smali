.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$ShareOnFacebookItem;
.super Lnet/londatiga/android/ActionItem;
.source "FacebookFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareOnFacebookItem"
.end annotation


# instance fields
.field private final facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 0
    .param p2, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$ShareOnFacebookItem;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-direct {p0}, Lnet/londatiga/android/ActionItem;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$ShareOnFacebookItem;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .line 113
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$ShareOnFacebookItem;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$ShareOnFacebookItem;->facebookReadRequest:Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->shareOnFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$500(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    .line 118
    return-void
.end method
