.class final synthetic Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/forum/CreateBoardFragment;

.field private final arg$2:Landroid/widget/EditText;

.field private final arg$3:Landroid/widget/EditText;

.field private final arg$4:Landroid/widget/Spinner;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/forum/CreateBoardFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;->arg$1:Lcom/liquable/nemo/forum/CreateBoardFragment;

    iput-object p2, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;->arg$2:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;->arg$3:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;->arg$4:Landroid/widget/Spinner;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/forum/CreateBoardFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;-><init>(Lcom/liquable/nemo/forum/CreateBoardFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/forum/CreateBoardFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;-><init>(Lcom/liquable/nemo/forum/CreateBoardFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;->arg$1:Lcom/liquable/nemo/forum/CreateBoardFragment;

    iget-object v1, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;->arg$2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;->arg$3:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;->arg$4:Landroid/widget/Spinner;

    # invokes: Lcom/liquable/nemo/forum/CreateBoardFragment;->lambda$onCreateView$35(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/view/View;)V
    invoke-static {v0, v1, v2, v3, p1}, Lcom/liquable/nemo/forum/CreateBoardFragment;->access$lambda$0(Lcom/liquable/nemo/forum/CreateBoardFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method
