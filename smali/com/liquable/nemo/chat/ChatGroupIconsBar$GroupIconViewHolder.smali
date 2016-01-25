.class Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;
.super Ljava/lang/Object;
.source "ChatGroupIconsBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ChatGroupIconsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupIconViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

.field title:Landroid/widget/TextView;

.field unread:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->this$0:Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/chat/ChatGroupIconsBar;Lcom/liquable/nemo/chat/ChatGroupIconsBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/chat/ChatGroupIconsBar;
    .param p2, "x1"    # Lcom/liquable/nemo/chat/ChatGroupIconsBar$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;-><init>(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)V

    return-void
.end method
