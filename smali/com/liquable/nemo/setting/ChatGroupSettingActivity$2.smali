.class Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;
.super Ljava/lang/Object;
.source "ChatGroupSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->onSettingCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

.field final synthetic val$voiceMsgPref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/ChatGroupSettingActivity;Landroid/preference/Preference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;->val$voiceMsgPref:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 108
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    const v2, 0x7f0d03d9

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    const v3, 0x7f0d03d8

    .line 109
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 110
    .local v0, "items":[Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    invoke-static {v1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2$1;-><init>(Lcom/liquable/nemo/setting/ChatGroupSettingActivity$2;)V

    .line 111
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 126
    return v4
.end method
