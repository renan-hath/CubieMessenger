.class Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "YoutubePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/YoutubePickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public durationTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/liquable/nemo/chat/YoutubePickerAdapter;

.field public titleTextView:Landroid/widget/TextView;

.field public viewCountTextView:Landroid/widget/TextView;

.field public youtubeThumbnailView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerAdapter;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;->this$0:Lcom/liquable/nemo/chat/YoutubePickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerAdapter;Lcom/liquable/nemo/chat/YoutubePickerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerAdapter;
    .param p2, "x1"    # Lcom/liquable/nemo/chat/YoutubePickerAdapter$1;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/chat/YoutubePickerAdapter;)V

    return-void
.end method
