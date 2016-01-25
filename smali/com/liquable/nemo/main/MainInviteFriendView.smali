.class public Lcom/liquable/nemo/main/MainInviteFriendView;
.super Lcom/liquable/nemo/main/MainFragment;
.source "MainInviteFriendView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;
    }
.end annotation


# static fields
.field private static final MAX_ITEM_WITHOUT_MORE:I = 0x6


# instance fields
.field private inviteFriendList:Landroid/widget/LinearLayout;

.field private final logger:Lcom/liquable/nemo/util/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainFragment;-><init>()V

    .line 48
    const-class v0, Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainInviteFriendView;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/main/MainInviteFriendView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainInviteFriendView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/main/MainInviteFriendView;->inviteFriendList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/main/MainInviteFriendView;)Lcom/liquable/nemo/util/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainInviteFriendView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/main/MainInviteFriendView;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method private addTwitterInvite(Ljava/util/Map;Landroid/view/LayoutInflater;)V
    .locals 6
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "mapOfInvites":Ljava/util/Map;, "Ljava/util/Map<Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;Landroid/view/View;>;"
    invoke-static {}, Lcom/liquable/nemo/Constants;->isFullFlavor()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string/jumbo v2, "com.liquable.nemo.friend.twitter.LoginToTwitterActivity"

    invoke-static {v2}, Lcom/liquable/nemo/util/ReflectionUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 206
    .local v0, "loginToTwitterActivityClass":Ljava/lang/Class;
    const-string/jumbo v2, "com.liquable.nemo.friend.twitter.TwitterFriendListActivity"

    invoke-static {v2}, Lcom/liquable/nemo/util/ReflectionUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 209
    .local v1, "twitterFriendListActivityClass":Ljava/lang/Class;
    sget-object v2, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->twitter:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    const v3, 0x7f02043e

    const v4, 0x7f0d0284

    new-instance v5, Lcom/liquable/nemo/main/MainInviteFriendView$6;

    invoke-direct {v5, p0, v1, v0}, Lcom/liquable/nemo/main/MainInviteFriendView$6;-><init>(Lcom/liquable/nemo/main/MainInviteFriendView;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 210
    invoke-direct {p0, p2, v3, v4, v5}, Lcom/liquable/nemo/main/MainInviteFriendView;->createCell(Landroid/view/LayoutInflater;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    .line 209
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createCell(Landroid/view/LayoutInflater;IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "resourceId"    # I
    .param p3, "appNameId"    # I
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 56
    const v1, 0x7f030143

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f08030e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 58
    const v1, 0x7f08030d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v1, "mapOfInvites":Ljava/util/Map;, "Ljava/util/Map<Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;Landroid/view/View;>;"
    sget-object v2, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->contacts:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    const v3, 0x7f02042e

    const v4, 0x7f0d0280

    new-instance v5, Lcom/liquable/nemo/main/MainInviteFriendView$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/main/MainInviteFriendView$1;-><init>(Lcom/liquable/nemo/main/MainInviteFriendView;)V

    .line 70
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/liquable/nemo/main/MainInviteFriendView;->createCell(Landroid/view/LayoutInflater;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    .line 69
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v2, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->cubieId:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    const v3, 0x7f02043b

    const v4, 0x7f0d0460

    new-instance v5, Lcom/liquable/nemo/main/MainInviteFriendView$2;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/main/MainInviteFriendView$2;-><init>(Lcom/liquable/nemo/main/MainInviteFriendView;)V

    .line 90
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/liquable/nemo/main/MainInviteFriendView;->createCell(Landroid/view/LayoutInflater;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    .line 89
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v2, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->people_you_may_know:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    const v3, 0x7f02043d

    const v4, 0x7f0d0429

    new-instance v5, Lcom/liquable/nemo/main/MainInviteFriendView$3;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/main/MainInviteFriendView$3;-><init>(Lcom/liquable/nemo/main/MainInviteFriendView;)V

    .line 102
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/liquable/nemo/main/MainInviteFriendView;->createCell(Landroid/view/LayoutInflater;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    .line 101
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v2, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->facebook:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    const v3, 0x7f02043c

    const v4, 0x7f0d0283

    new-instance v5, Lcom/liquable/nemo/main/MainInviteFriendView$4;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/main/MainInviteFriendView$4;-><init>(Lcom/liquable/nemo/main/MainInviteFriendView;)V

    .line 119
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/liquable/nemo/main/MainInviteFriendView;->createCell(Landroid/view/LayoutInflater;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    .line 118
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/main/MainInviteFriendView;->addTwitterInvite(Ljava/util/Map;Landroid/view/LayoutInflater;)V

    .line 134
    const v2, 0x7f030142

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "mainInviteView":Landroid/view/View;
    const v2, 0x7f08030c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/liquable/nemo/main/MainInviteFriendView;->inviteFriendList:Landroid/widget/LinearLayout;

    .line 137
    new-instance v2, Lcom/liquable/nemo/main/MainInviteFriendView$5;

    invoke-direct {v2, p0, p1, v1}, Lcom/liquable/nemo/main/MainInviteFriendView$5;-><init>(Lcom/liquable/nemo/main/MainInviteFriendView;Landroid/view/LayoutInflater;Ljava/util/Map;)V

    new-array v3, v6, [Ljava/lang/Void;

    .line 194
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/main/MainInviteFriendView$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    return-object v0
.end method
