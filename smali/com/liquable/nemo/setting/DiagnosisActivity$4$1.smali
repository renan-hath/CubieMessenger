.class Lcom/liquable/nemo/setting/DiagnosisActivity$4$1;
.super Ljava/lang/Object;
.source "DiagnosisActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/DiagnosisActivity$4;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$4;

.field final synthetic val$enabled:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/DiagnosisActivity$4;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/DiagnosisActivity$4;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$4$1;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$4;

    iput-object p2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$4$1;->val$enabled:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 444
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    iget-object v1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$4$1;->val$enabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setUseDefaultS3EndPoint(Z)V

    .line 445
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$4$1;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$4;

    iget-object v0, v0, Lcom/liquable/nemo/setting/DiagnosisActivity$4;->val$useDefaultS3EndPointPreference:Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isUseDefaultS3EndPoint()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 446
    return-void
.end method
