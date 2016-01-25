.class public Lcom/liquable/nemo/email/EmailActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "EmailActivity.java"


# instance fields
.field private connectEmailView:Landroid/view/View;

.field private connectedEmailView:Landroid/view/View;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/email/EmailActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/email/EmailActivity;->lambda$initConnectEmailView$32(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/liquable/nemo/email/EmailActivity;Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/email/EmailActivity;->lambda$onLoggedInCreate$33(Lcom/liquable/nemo/model/account/ProfileDto;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/liquable/nemo/email/EmailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/liquable/nemo/email/EmailActivity;->lambda$onLoggedInCreate$34()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/liquable/nemo/email/EmailActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/email/EmailActivity;->lambda$null$29(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/liquable/nemo/email/EmailActivity;Lcom/liquable/nemo/model/DomainException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/email/EmailActivity;->lambda$null$30(Lcom/liquable/nemo/model/DomainException;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/liquable/nemo/email/EmailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/liquable/nemo/email/EmailActivity;->lambda$null$31(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/liquable/nemo/email/EmailActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/email/EmailActivity;->lambda$null$28(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private initConnectEmailView()V
    .locals 5

    .prologue
    .line 27
    const v4, 0x7f0800ad

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/email/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 28
    .local v2, "email":Landroid/widget/EditText;
    const v4, 0x7f0800af

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/email/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 29
    .local v3, "password":Landroid/widget/EditText;
    const v4, 0x7f0800b1

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/email/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 30
    .local v1, "confirmPassword":Landroid/widget/EditText;
    const v4, 0x7f0800b3

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/email/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "btn":Landroid/view/View;
    invoke-static {p0, v2, v3, v1}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/email/EmailActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method private initConnectedEmail(Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 3
    .param p1, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 69
    const v1, 0x7f0800b7

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/email/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    .local v0, "email":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/liquable/nemo/email/EmailActivity;->connectedEmailView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-void
.end method

.method private synthetic lambda$initConnectEmailView$32(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 6
    .param p4, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "emailText":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "passwordText":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "confirmPasswordText":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v3

    if-lt v3, v5, :cond_1

    .line 41
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v3

    if-ge v3, v5, :cond_2

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/email/EmailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d01ab

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/liquable/nemo/email/EmailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d01a9

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p4, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    iget-object v3, p0, Lcom/liquable/nemo/email/EmailActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 53
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->accountDaemon:Lcom/liquable/nemo/friend/AccountDaemon;

    invoke-virtual {v3, v1, v2}, Lcom/liquable/nemo/friend/AccountDaemon;->prepareEmailConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/future/IFuture;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/email/EmailActivity;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v3

    invoke-static {p0}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$4;->lambdaFactory$(Lcom/liquable/nemo/email/EmailActivity;)Lcom/liquable/future/Consumer;

    move-result-object v4

    .line 54
    invoke-interface {v3, v4}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v3

    const-class v4, Lcom/liquable/nemo/model/DomainException;

    invoke-static {p0}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$5;->lambdaFactory$(Lcom/liquable/nemo/email/EmailActivity;)Lcom/liquable/future/Consumer;

    move-result-object v5

    .line 59
    invoke-interface {v3, v4, v5}, Lcom/liquable/future/IFuture;->consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v3

    invoke-static {p0, p4}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$6;->lambdaFactory$(Lcom/liquable/nemo/email/EmailActivity;Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v4

    .line 61
    invoke-interface {v3, v4}, Lcom/liquable/future/IFuture;->whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;

    goto :goto_0
.end method

.method private synthetic lambda$null$28(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/liquable/nemo/email/EmailActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$null$29(Ljava/lang/Void;)V
    .locals 3
    .param p1, "n"    # Ljava/lang/Void;

    .prologue
    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {p0}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$7;->lambdaFactory$(Lcom/liquable/nemo/email/EmailActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 59
    return-void
.end method

.method private synthetic lambda$null$30(Lcom/liquable/nemo/model/DomainException;)V
    .locals 1
    .param p1, "e"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/liquable/nemo/model/DomainException;->getI18nKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liquable/nemo/util/NemoUIs;->showToastFromI18nKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private synthetic lambda$null$31(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/email/EmailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 64
    return-void
.end method

.method private synthetic lambda$onLoggedInCreate$33(Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 2
    .param p1, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/ProfileDto;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/email/EmailActivity;->connectEmailView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/email/EmailActivity;->initConnectedEmail(Lcom/liquable/nemo/model/account/ProfileDto;)V

    goto :goto_0
.end method

.method private synthetic lambda$onLoggedInCreate$34()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/email/EmailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/liquable/nemo/email/EmailActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d01af

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 78
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/email/EmailActivity;->setContentView(I)V

    .line 79
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/email/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/email/EmailActivity;->connectEmailView:Landroid/view/View;

    .line 80
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/email/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/email/EmailActivity;->connectedEmailView:Landroid/view/View;

    .line 81
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/email/EmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/email/EmailActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 83
    invoke-direct {p0}, Lcom/liquable/nemo/email/EmailActivity;->initConnectEmailView()V

    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/email/EmailActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 86
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->accountDaemon:Lcom/liquable/nemo/friend/AccountDaemon;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/AccountDaemon;->findMyProfile()Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/email/EmailActivity;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {p0}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$2;->lambdaFactory$(Lcom/liquable/nemo/email/EmailActivity;)Lcom/liquable/future/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {p0}, Lcom/liquable/nemo/email/EmailActivity$$Lambda$3;->lambdaFactory$(Lcom/liquable/nemo/email/EmailActivity;)Ljava/lang/Runnable;

    move-result-object v1

    .line 92
    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;

    .line 93
    return-void
.end method
