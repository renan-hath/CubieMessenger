.class Lcom/liquable/nemo/message/view/AskLocationMessageOtherView$1;
.super Ljava/lang/Object;
.source "AskLocationMessageOtherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/AskLocationMessageOtherView;->initBubbleBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/AskLocationMessageOtherView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/AskLocationMessageOtherView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/AskLocationMessageOtherView;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AskLocationMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AskLocationMessageOtherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/message/view/AskLocationMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AskLocationMessageOtherView;

    iget-object v0, v0, Lcom/liquable/nemo/message/view/AskLocationMessageOtherView;->context:Landroid/content/Context;

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->GET_LOCATION_FROM_ASK:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 31
    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v1

    .line 30
    invoke-static {v0, v1}, Lcom/liquable/nemo/map/LocationHelper;->intentLocationPicker(Landroid/content/Context;I)V

    .line 32
    return-void
.end method
