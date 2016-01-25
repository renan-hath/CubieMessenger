.class Lcom/liquable/nemo/share/ShareMediaAdapter$5;
.super Ljava/lang/Object;
.source "ShareMediaAdapter.java"

# interfaces
.implements Lcom/liquable/nemo/share/MediaInfoCheckedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/ShareMediaAdapter;->getPictureView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/ShareMediaAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/ShareMediaAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/ShareMediaAdapter;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter$5;->this$0:Lcom/liquable/nemo/share/ShareMediaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/liquable/nemo/android/provider/MediaInfo;Z)V
    .locals 1
    .param p1, "mediaInfo"    # Lcom/liquable/nemo/android/provider/MediaInfo;
    .param p2, "isChecked"    # Z

    .prologue
    .line 178
    if-eqz p2, :cond_0

    .line 179
    iget-object v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter$5;->this$0:Lcom/liquable/nemo/share/ShareMediaAdapter;

    # getter for: Lcom/liquable/nemo/share/ShareMediaAdapter;->checkedMediaInfos:Ljava/util/Set;
    invoke-static {v0}, Lcom/liquable/nemo/share/ShareMediaAdapter;->access$300(Lcom/liquable/nemo/share/ShareMediaAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter$5;->this$0:Lcom/liquable/nemo/share/ShareMediaAdapter;

    # getter for: Lcom/liquable/nemo/share/ShareMediaAdapter;->checkedMediaInfos:Ljava/util/Set;
    invoke-static {v0}, Lcom/liquable/nemo/share/ShareMediaAdapter;->access$300(Lcom/liquable/nemo/share/ShareMediaAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
