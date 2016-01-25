.class Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;
.super Ljava/lang/Object;
.source "MembersToAddView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/message/view/MembersToAddView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/view/View;

.field iconImage:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field row:Landroid/view/View;

.field final synthetic this$0:Lcom/liquable/nemo/message/view/MembersToAddView;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/message/view/MembersToAddView;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/message/view/MembersToAddView;Lcom/liquable/nemo/message/view/MembersToAddView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/message/view/MembersToAddView;
    .param p2, "x1"    # Lcom/liquable/nemo/message/view/MembersToAddView$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;-><init>(Lcom/liquable/nemo/message/view/MembersToAddView;)V

    return-void
.end method
