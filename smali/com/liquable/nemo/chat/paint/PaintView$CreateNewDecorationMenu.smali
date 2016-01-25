.class Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;
.super Ljava/lang/Object;
.source "PaintView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/paint/PaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateNewDecorationMenu"
.end annotation


# instance fields
.field private final dialog:Landroid/app/AlertDialog;

.field private final intX:I

.field private final intY:I

.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintView;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/paint/PaintView;II)V
    .locals 3
    .param p2, "intX"    # I
    .param p3, "intY"    # I

    .prologue
    .line 43
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p2, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->intX:I

    .line 45
    iput p3, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->intY:I

    .line 47
    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintView$DecorationMenuAdapter;

    .line 48
    invoke-virtual {p1}, Lcom/liquable/nemo/chat/paint/PaintView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/liquable/nemo/chat/paint/PaintView$DecorationMenuAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->dialog:Landroid/app/AlertDialog;

    .line 50
    return-void
.end method

.method private createNewText()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 53
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintView;->access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    .line 55
    .local v9, "nextIndex":I
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintTextProperty;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->intX:I

    iget v2, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->intY:I

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    .line 58
    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->brushPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/liquable/nemo/chat/paint/PaintView;->access$100(Lcom/liquable/nemo/chat/paint/PaintView;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    sget-object v5, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;->ALL_STYLES:Ljava/util/List;

    .line 59
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/chat/paint/PaintBubbleStyle;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/chat/paint/PaintTextProperty;-><init>(IILjava/lang/String;ILcom/liquable/nemo/chat/paint/PaintBubbleStyle;FFLandroid/graphics/Rect;I)V

    .line 65
    .local v0, "property":Lcom/liquable/nemo/chat/paint/PaintTextProperty;
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->onSelectPaintTextListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintView;->access$200(Lcom/liquable/nemo/chat/paint/PaintView;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/liquable/nemo/chat/paint/OnPropertyListener;->onProperty(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private prepareCreatingNewSticker()V
    .locals 6

    .prologue
    .line 87
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->paintItems:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintView;->access$000(Lcom/liquable/nemo/chat/paint/PaintView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 89
    .local v5, "nextIndex":I
    new-instance v0, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->intX:I

    iget v2, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->intY:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;-><init>(IIFFI)V

    .line 94
    .local v0, "property":Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;
    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->this$0:Lcom/liquable/nemo/chat/paint/PaintView;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintView;->onPrepareCreatingDecorationListener:Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintView;->access$300(Lcom/liquable/nemo/chat/paint/PaintView;)Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;->onPrepare(Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 70
    packed-switch p2, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 72
    :pswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->createNewText()V

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->prepareCreatingNewSticker()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public popup()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintView$CreateNewDecorationMenu;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 84
    return-void
.end method
