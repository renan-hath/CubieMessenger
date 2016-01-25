.class public Lcom/liquable/nemo/subaccount/SubAccountActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "SubAccountActivity.java"


# instance fields
.field private countDownTask:Ljava/lang/Runnable;

.field private createSubAccount:Landroid/view/View;

.field private volatile destroyed:Z

.field private final handler:Landroid/os/Handler;

.field private pincode:Landroid/widget/TextView;

.field private remainProgress:Landroid/widget/ProgressBar;

.field private remainSeconds:I

.field protected subAccount:Lcom/liquable/nemo/model/account/SubAccountDto;

.field private subAccountSession:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->handler:Landroid/os/Handler;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->remainSeconds:I

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/subaccount/SubAccountActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/subaccount/SubAccountActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->pincode:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/subaccount/SubAccountActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/subaccount/SubAccountActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->createSubAccount:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/subaccount/SubAccountActivity;Lcom/liquable/nemo/model/account/SubAccountDto;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/subaccount/SubAccountActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/model/account/SubAccountDto;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->initSubAccountSession(Lcom/liquable/nemo/model/account/SubAccountDto;)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/subaccount/SubAccountActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/subaccount/SubAccountActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->remainSeconds:I

    return v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/subaccount/SubAccountActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/subaccount/SubAccountActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->generatePincode()V

    return-void
.end method

.method private composeCubieIdHelp()Ljava/lang/String;
    .locals 7

    .prologue
    .line 43
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "username":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    const-string/jumbo v0, ""

    .line 54
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const-string/jumbo v4, "\\d+"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "cubieIdPrefix":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/friend/model/Account;->unambiguousCubieId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string/jumbo v4, "[a-zA-Z]+"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "cubieIdSuffix":Ljava/lang/String;
    const v4, 0x7f0d04cc

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "cubieIdHelp":Ljava/lang/String;
    goto :goto_0
.end method

.method private generatePincode()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->destroyed:Z

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->remainProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 63
    new-instance v0, Lcom/liquable/nemo/subaccount/SubAccountActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/liquable/nemo/subaccount/SubAccountActivity$1;-><init>(Lcom/liquable/nemo/subaccount/SubAccountActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 79
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity$1;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initCreateSubAccount()V
    .locals 2

    .prologue
    .line 83
    const v1, 0x7f08010f

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "registerSubAccountBtn":Landroid/view/View;
    new-instance v1, Lcom/liquable/nemo/subaccount/SubAccountActivity$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/subaccount/SubAccountActivity$2;-><init>(Lcom/liquable/nemo/subaccount/SubAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method private initSubAccountSession(Lcom/liquable/nemo/model/account/SubAccountDto;)V
    .locals 3
    .param p1, "subAccountDto"    # Lcom/liquable/nemo/model/account/SubAccountDto;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->subAccount:Lcom/liquable/nemo/model/account/SubAccountDto;

    .line 113
    const v1, 0x7f080114

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, "cubieId":Landroid/widget/TextView;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/friend/model/Account;->unambiguousCubieId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->subAccountSession:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-direct {p0}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->generatePincode()V

    .line 118
    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->destroyed:Z

    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->countDownTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->countDownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->countDownTask:Ljava/lang/Runnable;

    .line 128
    :cond_0
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d0163

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 134
    const v1, 0x7f030045

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->setContentView(I)V

    .line 135
    const v1, 0x7f08010d

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->createSubAccount:Landroid/view/View;

    .line 136
    const v1, 0x7f080110

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->subAccountSession:Landroid/view/View;

    .line 137
    const v1, 0x7f080118

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->remainProgress:Landroid/widget/ProgressBar;

    .line 138
    const v1, 0x7f080117

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->pincode:Landroid/widget/TextView;

    .line 140
    const v1, 0x7f080115

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    .local v0, "cubieIdHelp":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->composeCubieIdHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-direct {p0}, Lcom/liquable/nemo/subaccount/SubAccountActivity;->initCreateSubAccount()V

    .line 145
    new-instance v1, Lcom/liquable/nemo/subaccount/SubAccountActivity$3;

    invoke-direct {v1, p0, p0}, Lcom/liquable/nemo/subaccount/SubAccountActivity$3;-><init>(Lcom/liquable/nemo/subaccount/SubAccountActivity;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 165
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/subaccount/SubAccountActivity$3;->execute([Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method protected startCountDown(II)V
    .locals 4
    .param p1, "newRemainSeconds"    # I
    .param p2, "totalSeconds"    # I

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->destroyed:Z

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 172
    :cond_0
    iput p1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->remainSeconds:I

    .line 174
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->remainProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 177
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->remainProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->remainSeconds:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 178
    new-instance v0, Lcom/liquable/nemo/subaccount/SubAccountActivity$4;

    invoke-direct {v0, p0, p2}, Lcom/liquable/nemo/subaccount/SubAccountActivity$4;-><init>(Lcom/liquable/nemo/subaccount/SubAccountActivity;I)V

    iput-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->countDownTask:Ljava/lang/Runnable;

    .line 191
    iget-object v0, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity;->countDownTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
