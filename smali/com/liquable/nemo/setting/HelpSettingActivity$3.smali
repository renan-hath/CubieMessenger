.class Lcom/liquable/nemo/setting/HelpSettingActivity$3;
.super Ljava/lang/Object;
.source "HelpSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;->onSettingCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field enableTestIndexCount:I

.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3;->enableTestIndexCount:I

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 843
    iget v5, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3;->enableTestIndexCount:I

    sget-object v2, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v2}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    :goto_0
    if-lt v5, v2, :cond_3

    .line 844
    iget-object v2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/HelpSettingActivity;->isEngineerFunctionsEnabled:Z
    invoke-static {v2}, Lcom/liquable/nemo/setting/HelpSettingActivity;->access$3000(Lcom/liquable/nemo/setting/HelpSettingActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 845
    iget-object v2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/HelpSettingActivity;->engineerEndPointReconnect:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;
    invoke-static {v2}, Lcom/liquable/nemo/setting/HelpSettingActivity;->access$200(Lcom/liquable/nemo/setting/HelpSettingActivity;)Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->registConnectionStateBroadcastReceiver()V
    invoke-static {v2}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;->access$3100(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerEndPointReconnect;)V

    .line 847
    iget-object v2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/HelpSettingActivity;->engineerFunctions:[Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;
    invoke-static {v2}, Lcom/liquable/nemo/setting/HelpSettingActivity;->access$3200(Lcom/liquable/nemo/setting/HelpSettingActivity;)[Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;

    move-result-object v5

    array-length v6, v5

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v0, v5, v2

    .line 848
    .local v0, "engFunc":Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;
    new-instance v1, Landroid/preference/Preference;

    iget-object v7, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-direct {v1, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 849
    .local v1, "pref":Landroid/preference/Preference;
    invoke-interface {v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;->showInPreference(Landroid/preference/Preference;)V

    .line 850
    new-instance v7, Lcom/liquable/nemo/setting/HelpSettingActivity$3$1;

    invoke-direct {v7, p0, v0}, Lcom/liquable/nemo/setting/HelpSettingActivity$3$1;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$3;Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;)V

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 857
    iget-object v7, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-virtual {v7}, Lcom/liquable/nemo/setting/HelpSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 847
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "engFunc":Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_0
    move v2, v4

    .line 843
    goto :goto_0

    .line 859
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    # setter for: Lcom/liquable/nemo/setting/HelpSettingActivity;->isEngineerFunctionsEnabled:Z
    invoke-static {v2, v4}, Lcom/liquable/nemo/setting/HelpSettingActivity;->access$3002(Lcom/liquable/nemo/setting/HelpSettingActivity;Z)Z

    .line 864
    :cond_2
    :goto_2
    return v3

    .line 862
    :cond_3
    iget v2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3;->enableTestIndexCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3;->enableTestIndexCount:I

    goto :goto_2
.end method
