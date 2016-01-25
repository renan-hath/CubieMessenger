.class Lcom/liquable/nemo/setting/DiagnosisActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DiagnosisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/DiagnosisActivity;
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
    .line 270
    iput-object p1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$1;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$1;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    # getter for: Lcom/liquable/nemo/setting/DiagnosisActivity;->endPointDiagnosis:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;
    invoke-static {v0}, Lcom/liquable/nemo/setting/DiagnosisActivity;->access$600(Lcom/liquable/nemo/setting/DiagnosisActivity;)Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    move-result-object v0

    # invokes: Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->onConnectionStateChanged(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->access$700(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;Landroid/content/Intent;)V

    .line 274
    return-void
.end method
