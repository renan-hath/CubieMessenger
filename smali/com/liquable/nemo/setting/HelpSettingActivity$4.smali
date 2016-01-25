.class Lcom/liquable/nemo/setting/HelpSettingActivity$4;
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
.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/HelpSettingActivity;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$4;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$4;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0177

    .line 876
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0173

    .line 877
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d016f

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$4;)V

    .line 878
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00c5

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$4$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$4$1;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$4;)V

    .line 902
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 910
    const/4 v0, 0x0

    return v0
.end method
