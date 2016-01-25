.class public Lcom/liquable/nemo/friend/SearchCubieIdFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "SearchCubieIdFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/SearchCubieIdFragment$SearchResult;
    }
.end annotation


# static fields
.field private static final MIN_SEARCH_TIME:I = 0x5dc


# instance fields
.field private findCubieIdEditText:Landroid/widget/EditText;

.field private fragmentView:Landroid/view/View;

.field private isFromExternalIntent:Z

.field private searchStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->findCubieIdEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/friend/SearchCubieIdFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/SearchCubieIdFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->search(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->searchStartTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/SearchCubieIdFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->finishIfFromExternalIntent()V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/friend/SearchCubieIdFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/SearchCubieIdFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/friend/SearchCubieIdFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/SearchCubieIdFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->removeDialog(I)V

    return-void
.end method

.method private finishIfFromExternalIntent()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->isFromExternalIntent:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->close()V

    .line 86
    :cond_0
    return-void
.end method

.method private initCubieIdView()V
    .locals 4

    .prologue
    .line 89
    iget-object v2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f080114

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .local v0, "cubieIdEditText":Landroid/widget/TextView;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/friend/model/Account;->unambiguousCubieId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f0801fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->findCubieIdEditText:Landroid/widget/EditText;

    .line 93
    iget-object v2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->findCubieIdEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/liquable/nemo/friend/SearchCubieIdFragment$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$1;-><init>(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 104
    iget-object v2, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f0801fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 105
    .local v1, "searchFriendBtn":Landroid/widget/Button;
    new-instance v2, Lcom/liquable/nemo/friend/SearchCubieIdFragment$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$2;-><init>(Lcom/liquable/nemo/friend/SearchCubieIdFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method private search(Ljava/lang/String;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "cubieId":Ljava/lang/String;
    new-instance v1, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;-><init>(Lcom/liquable/nemo/friend/SearchCubieIdFragment;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 244
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/SearchCubieIdFragment$3;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/SearchCubieIdActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/SearchCubieIdActivity;->hasFriendUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->isFromExternalIntent:Z

    .line 120
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/friend/SearchCubieIdActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/SearchCubieIdActivity;->getAddFriendUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/util/CubieProfileUrl;->parse(Ljava/lang/String;)Lcom/liquable/nemo/util/CubieProfileUrl$Part;

    move-result-object v0

    .line 121
    .local v0, "url":Lcom/liquable/nemo/util/CubieProfileUrl$Part;
    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/liquable/nemo/util/CubieProfileUrl$Part;->getTrackingKey()Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->cubieProfileUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->searchStartTime:J

    .line 124
    invoke-virtual {v0}, Lcom/liquable/nemo/util/CubieProfileUrl$Part;->getCubieId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->search(Ljava/lang/String;)V

    .line 135
    .end local v0    # "url":Lcom/liquable/nemo/util/CubieProfileUrl$Part;
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->fragmentView:Landroid/view/View;

    return-object v1

    .line 126
    .restart local v0    # "url":Lcom/liquable/nemo/util/CubieProfileUrl$Part;
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d01b1

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 127
    invoke-direct {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->finishIfFromExternalIntent()V

    goto :goto_0

    .line 130
    .end local v0    # "url":Lcom/liquable/nemo/util/CubieProfileUrl$Part;
    :cond_1
    const v1, 0x7f0d0460

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->setTitle(Ljava/lang/String;)V

    .line 131
    const v1, 0x7f0300be

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->fragmentView:Landroid/view/View;

    .line 132
    invoke-direct {p0}, Lcom/liquable/nemo/friend/SearchCubieIdFragment;->initCubieIdView()V

    goto :goto_0
.end method
