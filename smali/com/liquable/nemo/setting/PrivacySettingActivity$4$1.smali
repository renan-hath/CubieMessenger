.class Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "PrivacySettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/PrivacySettingActivity$4;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$4;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/PrivacySettingActivity$4;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/PrivacySettingActivity$4;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$4;

    iput-object p3, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 106
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->val$newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 111
    .local v0, "isChecked":Ljava/lang/Boolean;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->privacyExcludeInRecommendSetting(Z)V

    .line 112
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->accountService:Lcom/liquable/nemo/client/service/AccountService;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 112
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/client/service/AccountService;->setExcludeInRecommendFriends(Ljava/lang/String;Z)V

    .line 114
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$4;

    iget-object v0, v0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->showDialog(I)V

    .line 120
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$4;

    iget-object v0, v0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->removeDialog(I)V

    .line 125
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 3
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$4;

    iget-object v0, v0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$4;

    iget-object v1, v1, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    const v2, 0x7f0d01c6

    .line 130
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    .line 129
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$4;

    iget-object v0, v0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    # getter for: Lcom/liquable/nemo/setting/PrivacySettingActivity;->excludeInRecommendPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->access$300(Lcom/liquable/nemo/setting/PrivacySettingActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isExcludeInRecommend()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->val$newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 139
    .local v0, "isChecked":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$4;

    iget-object v1, v1, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    iget-object v2, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$4;

    iget-object v2, v2, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    const v3, 0x7f0d0484

    .line 140
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    .line 139
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 142
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setExcludeInRecommend(Z)V

    .line 143
    iget-object v1, p0, Lcom/liquable/nemo/setting/PrivacySettingActivity$4$1;->this$1:Lcom/liquable/nemo/setting/PrivacySettingActivity$4;

    iget-object v1, v1, Lcom/liquable/nemo/setting/PrivacySettingActivity$4;->this$0:Lcom/liquable/nemo/setting/PrivacySettingActivity;

    # getter for: Lcom/liquable/nemo/setting/PrivacySettingActivity;->excludeInRecommendPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/liquable/nemo/setting/PrivacySettingActivity;->access$300(Lcom/liquable/nemo/setting/PrivacySettingActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isExcludeInRecommend()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    return-void
.end method
