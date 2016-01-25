.class public Lcom/liquable/nemo/regist/ImportContactsActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ImportContactsActivity.java"


# static fields
.field private static final MIN_NUMBER_OF_FRIENDS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/regist/ImportContactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/ImportContactsActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/liquable/nemo/regist/ImportContactsActivity;->finishAndGoToImportFacebookFriends()V

    return-void
.end method

.method private finishAndGoToImportFacebookFriends()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/regist/ImportContactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/ImportContactsActivity;->finish()V

    .line 38
    return-void
.end method


# virtual methods
.method protected getActionBarStyle()Lcom/liquable/nemo/BaseActivity$ActionBarStyle;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/liquable/nemo/BaseActivity$ActionBarStyle;->NO:Lcom/liquable/nemo/BaseActivity$ActionBarStyle;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/regist/ImportContactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/ImportContactsActivity;->finish()V

    .line 49
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onBackPressed()V

    .line 50
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/ImportContactsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d02e8

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 55
    const v2, 0x7f030031

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/ImportContactsActivity;->setContentView(I)V

    .line 57
    const v2, 0x7f0800c6

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/ImportContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "skipBtn":Landroid/view/View;
    new-instance v2, Lcom/liquable/nemo/regist/ImportContactsActivity$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/regist/ImportContactsActivity$1;-><init>(Lcom/liquable/nemo/regist/ImportContactsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v2, 0x7f080063

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/ImportContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "okBtn":Landroid/view/View;
    new-instance v2, Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/liquable/nemo/regist/ImportContactsActivity$2;-><init>(Lcom/liquable/nemo/regist/ImportContactsActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method
