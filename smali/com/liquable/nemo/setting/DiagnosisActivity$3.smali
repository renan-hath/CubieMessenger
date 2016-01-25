.class Lcom/liquable/nemo/setting/DiagnosisActivity$3;
.super Ljava/lang/Object;
.source "DiagnosisActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/DiagnosisActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/DiagnosisActivity;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$3;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$3;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    # invokes: Lcom/liquable/nemo/setting/DiagnosisActivity;->analyze()V
    invoke-static {v0}, Lcom/liquable/nemo/setting/DiagnosisActivity;->access$1100(Lcom/liquable/nemo/setting/DiagnosisActivity;)V

    .line 422
    const/4 v0, 0x0

    return v0
.end method
