.class Lcom/liquable/nemo/regist/SelectRegionActivity$1;
.super Ljava/lang/Object;
.source "SelectRegionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$regionDataList:Ljava/util/List;

.field final synthetic val$regionsListView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/SelectRegionActivity;Landroid/widget/ListView;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/SelectRegionActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/liquable/nemo/regist/SelectRegionActivity$1;->this$0:Lcom/liquable/nemo/regist/SelectRegionActivity;

    iput-object p2, p0, Lcom/liquable/nemo/regist/SelectRegionActivity$1;->val$regionsListView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/liquable/nemo/regist/SelectRegionActivity$1;->val$regionDataList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "spannable"    # Landroid/text/Editable;

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/liquable/nemo/regist/SelectRegionActivity$1;->val$regionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/liquable/nemo/regist/SelectRegionActivity$1;->this$0:Lcom/liquable/nemo/regist/SelectRegionActivity;

    iget-object v3, p0, Lcom/liquable/nemo/regist/SelectRegionActivity$1;->val$regionDataList:Ljava/util/List;

    # invokes: Lcom/liquable/nemo/regist/SelectRegionActivity;->createSimpleAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;
    invoke-static {v2, v3}, Lcom/liquable/nemo/regist/SelectRegionActivity;->access$000(Lcom/liquable/nemo/regist/SelectRegionActivity;Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/regist/SelectRegionActivity$1;->val$regionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/liquable/nemo/regist/SelectRegionActivity$1;->this$0:Lcom/liquable/nemo/regist/SelectRegionActivity;

    invoke-static {}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getInstance()Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;

    move-result-object v3

    .line 57
    invoke-virtual {v3, v0}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->filterDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 56
    # invokes: Lcom/liquable/nemo/regist/SelectRegionActivity;->createSimpleAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;
    invoke-static {v2, v3}, Lcom/liquable/nemo/regist/SelectRegionActivity;->access$000(Lcom/liquable/nemo/regist/SelectRegionActivity;Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 64
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 70
    return-void
.end method
