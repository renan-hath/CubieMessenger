.class public Lcom/liquable/nemo/setting/HelpSettingActivity;
.super Lcom/liquable/nemo/setting/BaseSettingActivity;
.source "HelpSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTriggerANR;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerToggleRpcAlwaysFail;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerThrowException;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTestS3EndPoint;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteReportAbuseForum;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTestInvalidSticker;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerSetAllHasRecentPictureToFalse;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerSendDeviceLog;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRestoreStickerPackages;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerResetAllTips;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRerunScheduler;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerReloadNotices;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerPurgeAndSyncAds;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerMyUid;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerExportDb;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteStickerImages;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteAllUserIcons;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCreateRobot;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerChangeForumCountry;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerClearFavoriteForumBoard;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCleanStickers;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerBuild;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerArchiveDb;,
        Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;
    }
.end annotation


# static fields
.field private static final HELP_SETTING_WAITING_KEY:I


# instance fields
.field private final engineerEndPointReconnect:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;

.field private final engineerFunctions:[Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;

.field private isEngineerFunctionsEnabled:Z

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;-><init>()V

    .line 688
    new-instance v0, Lcom/liquable/nemo/setting/HelpSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$1;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 695
    new-instance v0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity;->engineerEndPointReconnect:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;

    .line 697
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;

    const/4 v1, 0x0

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerBuild;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerBuild;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity;->engineerEndPointReconnect:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerReloadNotices;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerReloadNotices;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCleanStickers;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCleanStickers;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteStickerImages;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteStickerImages;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerResetAllTips;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerResetAllTips;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRerunScheduler;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRerunScheduler;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerMyUid;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerMyUid;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTestInvalidSticker;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTestInvalidSticker;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerToggleRpcAlwaysFail;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerToggleRpcAlwaysFail;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTriggerANR;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTriggerANR;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerPurgeAndSyncAds;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerPurgeAndSyncAds;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerThrowException;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerThrowException;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerExportDb;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerExportDb;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerArchiveDb;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerArchiveDb;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTestS3EndPoint;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerTestS3EndPoint;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteAllUserIcons;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteAllUserIcons;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRestoreStickerPackages;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRestoreStickerPackages;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCreateRobot;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerCreateRobot;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerSetAllHasRecentPictureToFalse;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerSetAllHasRecentPictureToFalse;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerSendDeviceLog;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerSendDeviceLog;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerClearFavoriteForumBoard;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerClearFavoriteForumBoard;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteReportAbuseForum;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerDeleteReportAbuseForum;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerChangeForumCountry;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerChangeForumCountry;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRecoverGooglePlayStickers;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Lcom/liquable/nemo/setting/HelpSettingActivity$1;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity;->engineerFunctions:[Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/setting/HelpSettingActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/setting/HelpSettingActivity;)Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity;->engineerEndPointReconnect:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/liquable/nemo/setting/HelpSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity;->isEngineerFunctionsEnabled:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/liquable/nemo/setting/HelpSettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity;->isEngineerFunctionsEnabled:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/liquable/nemo/setting/HelpSettingActivity;)[Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity;->engineerFunctions:[Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/liquable/nemo/setting/HelpSettingActivity;->deleteAccount()V

    return-void
.end method

.method private deleteAccount()V
    .locals 2

    .prologue
    .line 715
    new-instance v0, Lcom/liquable/nemo/setting/HelpSettingActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$2;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 811
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$2;->execute([Ljava/lang/Object;)V

    .line 812
    return-void
.end method


# virtual methods
.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 816
    packed-switch p1, :pswitch_data_0

    .line 820
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 818
    :pswitch_0
    const/4 v0, 0x0

    const v1, 0x7f0d0539

    invoke-static {p0, v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->createProgressDialog(Landroid/content/Context;ZI)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity;->engineerEndPointReconnect:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;

    # invokes: Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->unregistConnectionStateBroadcastReceiver()V
    invoke-static {v0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->access$2900(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;)V

    .line 826
    invoke-super {p0}, Lcom/liquable/nemo/setting/BaseSettingActivity;->onPause()V

    .line 827
    return-void
.end method

.method protected onSettingCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/HelpSettingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d02d3

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/setting/HelpSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 833
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/setting/HelpSettingActivity;->addPreferencesFromResource(I)V

    .line 835
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/HelpSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "version_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 836
    .local v1, "verPreference":Landroid/preference/Preference;
    const v2, 0x7f0d0503

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/setting/HelpSettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    .line 837
    invoke-virtual {v5}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 836
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 838
    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$3;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 868
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/HelpSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "delete_account_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 870
    .local v0, "deleteAccountPreference":Landroid/preference/Preference;
    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$4;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 913
    return-void
.end method

.method protected onSettingResume()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity;->engineerEndPointReconnect:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;

    # invokes: Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->registConnectionStateBroadcastReceiver()V
    invoke-static {v0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->access$3100(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;)V

    .line 918
    return-void
.end method
