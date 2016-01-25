.class Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;
.super Ljava/lang/Object;
.source "HelpSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity$4;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$4;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$4;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 882
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$4;

    iget-object v0, v0, Lcom/liquable/nemo/setting/HelpSettingActivity$4;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0177

    .line 883
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0170

    .line 884
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00c5

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$4$2$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$4$2$2;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;)V

    .line 885
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0115

    new-instance v2, Lcom/liquable/nemo/setting/HelpSettingActivity$4$2$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$4$2$1;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;)V

    .line 892
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 900
    return-void
.end method
