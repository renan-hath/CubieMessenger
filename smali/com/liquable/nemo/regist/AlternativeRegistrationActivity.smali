.class public Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;
.super Lcom/liquable/nemo/regist/AbstractRegistActivity;
.source "AlternativeRegistrationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onNotLoggedInCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d006c

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 17
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;->setContentView(I)V

    .line 19
    const v1, 0x7f080059

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 20
    .local v0, "registerWithFacebookBtn":Landroid/view/View;
    new-instance v1, Lcom/liquable/nemo/regist/AlternativeRegistrationActivity$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/regist/AlternativeRegistrationActivity$1;-><init>(Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method protected onNotLoggedResume()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 39
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 41
    :pswitch_0
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/AlternativeRegistrationActivity;->finish()V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
