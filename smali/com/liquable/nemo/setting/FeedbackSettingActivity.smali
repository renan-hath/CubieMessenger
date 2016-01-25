.class public Lcom/liquable/nemo/setting/FeedbackSettingActivity;
.super Lcom/liquable/nemo/setting/BaseSettingActivity;
.source "FeedbackSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSettingCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/FeedbackSettingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d027a

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/setting/FeedbackSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 11
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/setting/FeedbackSettingActivity;->addPreferencesFromResource(I)V

    .line 12
    return-void
.end method
