.class Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2$1;
.super Ljava/lang/Object;
.source "ChatGroupSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x1

    .line 115
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/Pref;->setPlayVoiceMessageUsingEarpiece(Z)V

    .line 117
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isPlayVoiceMessageUsingEarpiece()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;->val$voiceMsgPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;

    iget-object v1, v1, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    const v2, 0x7f0d0514

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    :goto_1
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;->val$voiceMsgPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2$1;->this$1:Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;

    iget-object v1, v1, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    const v2, 0x7f0d0515

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
