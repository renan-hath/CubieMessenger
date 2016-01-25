.class Lcom/liquable/nemo/regist/SelectRegionActivity$2;
.super Ljava/lang/Object;
.source "SelectRegionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/SelectRegionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/SelectRegionActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/SelectRegionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/SelectRegionActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/liquable/nemo/regist/SelectRegionActivity$2;->this$0:Lcom/liquable/nemo/regist/SelectRegionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 83
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "countryCode"

    const-string/jumbo v2, "countryCode"

    .line 85
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v3, "countryName"

    const-string/jumbo v2, "countryName"

    .line 87
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v2, p0, Lcom/liquable/nemo/regist/SelectRegionActivity$2;->this$0:Lcom/liquable/nemo/regist/SelectRegionActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/regist/SelectRegionActivity;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-object v2, p0, Lcom/liquable/nemo/regist/SelectRegionActivity$2;->this$0:Lcom/liquable/nemo/regist/SelectRegionActivity;

    invoke-virtual {v2}, Lcom/liquable/nemo/regist/SelectRegionActivity;->finish()V

    .line 90
    return-void
.end method
