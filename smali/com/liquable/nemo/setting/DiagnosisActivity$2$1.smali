.class Lcom/liquable/nemo/setting/DiagnosisActivity$2$1;
.super Ljava/lang/Object;
.source "DiagnosisActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/DiagnosisActivity$2;->onPostExecute(Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$2;

.field final synthetic val$reports:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/DiagnosisActivity$2;Landroid/util/Pair;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/DiagnosisActivity$2;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$2$1;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$2;

    iput-object p2, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$2$1;->val$reports:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$2$1;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/setting/DiagnosisActivity$2;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/DiagnosisActivity;->removeDialog(I)V

    .line 336
    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$2$1;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$2;

    iget-object v2, v0, Lcom/liquable/nemo/setting/DiagnosisActivity$2;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    iget-object v0, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$2$1;->val$reports:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$2$1;->val$reports:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/liquable/nemo/setting/DiagnosisActivity$2$1;->this$1:Lcom/liquable/nemo/setting/DiagnosisActivity$2;

    iget-object v3, v3, Lcom/liquable/nemo/setting/DiagnosisActivity$2;->this$0:Lcom/liquable/nemo/setting/DiagnosisActivity;

    # getter for: Lcom/liquable/nemo/setting/DiagnosisActivity;->endPointDiagnosis:Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;
    invoke-static {v3}, Lcom/liquable/nemo/setting/DiagnosisActivity;->access$600(Lcom/liquable/nemo/setting/DiagnosisActivity;)Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->getReport()Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;->access$800(Lcom/liquable/nemo/setting/DiagnosisActivity$EndPointDiagnosis;)Ljava/lang/CharSequence;

    move-result-object v3

    # invokes: Lcom/liquable/nemo/setting/DiagnosisActivity;->mailReport(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v2, v0, v1, v3}, Lcom/liquable/nemo/setting/DiagnosisActivity;->access$900(Lcom/liquable/nemo/setting/DiagnosisActivity;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method
