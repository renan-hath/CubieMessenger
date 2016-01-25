.class Lcom/liquable/nemo/widget/ShowcaseView$1;
.super Ljava/lang/Object;
.source "ShowcaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseItem(IILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/ShowcaseView;

.field final synthetic val$actionItemId:I

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$itemType:I


# direct methods
.method constructor <init>(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/app/Activity;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/widget/ShowcaseView;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    iput-object p2, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->val$itemType:I

    iput p4, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->val$actionItemId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 669
    iget-object v7, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->val$activity:Landroid/app/Activity;

    const v8, 0x102002c

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 670
    .local v2, "homeButton":Landroid/view/View;
    if-nez v2, :cond_0

    .line 672
    iget-object v7, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "abs__home"

    const-string/jumbo v9, "id"

    iget-object v10, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->val$activity:Landroid/app/Activity;

    .line 674
    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 672
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 675
    .local v3, "homeId":I
    if-eqz v3, :cond_0

    .line 676
    iget-object v7, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v7, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 679
    .end local v3    # "homeId":I
    :cond_0
    if-nez v2, :cond_1

    .line 680
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "insertShowcaseViewWithType cannot be used when the theme has no ActionBar"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 682
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 684
    .local v4, "p":Landroid/view/ViewParent;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ActionBarView"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 685
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 686
    .local v5, "previousP":Ljava/lang/String;
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 687
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 688
    .local v6, "throwP":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ActionBarView"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 689
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot find ActionBarView for Activity, instead found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 696
    .end local v5    # "previousP":Ljava/lang/String;
    .end local v6    # "throwP":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 697
    .local v1, "abv":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 699
    .local v0, "absAbv":Ljava/lang/Class;
    iget v7, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->val$itemType:I

    packed-switch v7, :pswitch_data_0

    .line 714
    :pswitch_0
    const-string/jumbo v7, "TAG"

    const-string/jumbo v8, "Unknown item type"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :goto_0
    return-void

    .line 701
    :pswitch_1
    iget-object v7, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    invoke-virtual {v7, v2}, Lcom/liquable/nemo/widget/ShowcaseView;->setShowcaseView(Landroid/view/View;)V

    goto :goto_0

    .line 704
    :pswitch_2
    iget-object v7, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    # invokes: Lcom/liquable/nemo/widget/ShowcaseView;->showcaseSpinner(Landroid/view/ViewParent;Ljava/lang/Class;)V
    invoke-static {v7, v4, v1}, Lcom/liquable/nemo/widget/ShowcaseView;->access$000(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/view/ViewParent;Ljava/lang/Class;)V

    goto :goto_0

    .line 707
    :pswitch_3
    iget-object v7, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    # invokes: Lcom/liquable/nemo/widget/ShowcaseView;->showcaseTitle(Landroid/view/ViewParent;Ljava/lang/Class;)V
    invoke-static {v7, v4, v1}, Lcom/liquable/nemo/widget/ShowcaseView;->access$100(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/view/ViewParent;Ljava/lang/Class;)V

    goto :goto_0

    .line 711
    :pswitch_4
    iget-object v7, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->this$0:Lcom/liquable/nemo/widget/ShowcaseView;

    iget v8, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->val$itemType:I

    iget v9, p0, Lcom/liquable/nemo/widget/ShowcaseView$1;->val$actionItemId:I

    # invokes: Lcom/liquable/nemo/widget/ShowcaseView;->showcaseActionItem(Landroid/view/ViewParent;Ljava/lang/Class;II)V
    invoke-static {v7, v4, v0, v8, v9}, Lcom/liquable/nemo/widget/ShowcaseView;->access$200(Lcom/liquable/nemo/widget/ShowcaseView;Landroid/view/ViewParent;Ljava/lang/Class;II)V

    goto :goto_0

    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
