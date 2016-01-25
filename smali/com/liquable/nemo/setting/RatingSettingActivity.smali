.class public Lcom/liquable/nemo/setting/RatingSettingActivity;
.super Lcom/liquable/nemo/setting/BaseSettingActivity;
.source "RatingSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSettingCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/RatingSettingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d041a

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/setting/RatingSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/setting/RatingSettingActivity;->addPreferencesFromResource(I)V

    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/RatingSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "google_play_rating_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 17
    .local v0, "googlePlayRatingPreference":Landroid/preference/Preference;
    new-instance v1, Lcom/liquable/nemo/setting/RatingSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/setting/RatingSettingActivity$1;-><init>(Lcom/liquable/nemo/setting/RatingSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 25
    return-void
.end method
