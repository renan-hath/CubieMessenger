.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$LikeFacebookFanPageItem;
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
    name = "LikeFacebookFanPageItem"
.end annotation


# static fields
.field private static final FACEBOOK_PAGE_URL:Ljava/lang/String; = "http://sv.cubie.com/redirect-facebook"


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$LikeFacebookFanPageItem;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-direct {p0}, Lnet/londatiga/android/ActionItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;
    .param p2, "x1"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$LikeFacebookFanPageItem;-><init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->likeCubieFacebookPage()V

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "http://sv.cubie.com/redirect-facebook"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$LikeFacebookFanPageItem;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method
