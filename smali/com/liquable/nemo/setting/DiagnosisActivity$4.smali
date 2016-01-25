.class Lcom/liquable/nemo/setting/DiagnosisActivity$4;
.super Ljava/lang/Object;
.source "DiagnosisActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/DiagnosisActivity;->onSettingCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

.field final synthetic val$useDefaultS3EndPointPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/DiagnosisActivity;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/DiagnosisActivity;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$4;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    iput-object p2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$4;->val$useDefaultS3EndPointPreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 432
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 434
    .local v0, "enabled":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setUseDefaultS3EndPoint(Z)V

    .line 436
    const/4 v1, 0x1

    .line 451
    :goto_0
    return v1

    .line 439
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$4;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d04f8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d03b3

    new-instance v3, Lcom/liquable/nemo/setting/DiagnosisActivity$4$1;

    invoke-direct {v3, p0, v0}, Lcom/liquable/nemo/setting/DiagnosisActivity$4$1;-><init>(Lcom/liquable/nemo/setting/DiagnosisActivity$4;Ljava/lang/Boolean;)V

    .line 440
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00c5

    const/4 v3, 0x0

    .line 448
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 451
    const/4 v1, 0x0

    goto :goto_0
.end method
