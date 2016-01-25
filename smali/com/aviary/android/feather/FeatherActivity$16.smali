.class Lcom/aviary/android/feather/FeatherActivity$16;
.super Ljava/lang/Object;
.source "FeatherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/FeatherActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/FeatherActivity;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$16;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iput-object p2, p0, Lcom/aviary/android/feather/FeatherActivity$16;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$16;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iget-object v1, v0, Lcom/aviary/android/feather/FeatherActivity;->mMainController:Lcom/aviary/android/feather/AviaryMainController;

    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$16;->val$tag:Ljava/lang/Object;

    check-cast v0, Lcom/aviary/android/feather/library/content/ToolEntry;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/AviaryMainController;->activateTool(Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 1864
    return-void
.end method
