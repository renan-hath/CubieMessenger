.class public Lnet/londatiga/android/QuickAction;
.super Lnet/londatiga/android/PopupWindows;
.source "QuickAction.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/londatiga/android/QuickAction$Orientation;,
        Lnet/londatiga/android/QuickAction$OnDismissListener;,
        Lnet/londatiga/android/QuickAction$OnActionItemClickListener;,
        Lnet/londatiga/android/QuickAction$AnimationStyle;
    }
.end annotation


# instance fields
.field private final actionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/londatiga/android/ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimStyle:Lnet/londatiga/android/QuickAction$AnimationStyle;

.field private mArrowDown:Landroid/widget/ImageView;

.field private mArrowUp:Landroid/widget/ImageView;

.field private mChildPos:I

.field private mDidAction:Z

.field private mDismissListener:Lnet/londatiga/android/QuickAction$OnDismissListener;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInsertPos:I

.field private mItemClickListener:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

.field private final mOrientation:Lnet/londatiga/android/QuickAction$Orientation;

.field private mRootView:Landroid/view/View;

.field private mScroller:Landroid/widget/ScrollView;

.field private mTrack:Landroid/view/ViewGroup;

.field private rootWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    sget-object v0, Lnet/londatiga/android/QuickAction$Orientation;->VERTICAL:Lnet/londatiga/android/QuickAction$Orientation;

    invoke-direct {p0, p1, v0}, Lnet/londatiga/android/QuickAction;-><init>(Landroid/content/Context;Lnet/londatiga/android/QuickAction$Orientation;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/londatiga/android/QuickAction$Orientation;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # Lnet/londatiga/android/QuickAction$Orientation;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1}, Lnet/londatiga/android/PopupWindows;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->actionItems:Ljava/util/List;

    .line 77
    iput v2, p0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    .line 100
    iput-object p2, p0, Lnet/londatiga/android/QuickAction;->mOrientation:Lnet/londatiga/android/QuickAction$Orientation;

    .line 102
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    .line 104
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mOrientation:Lnet/londatiga/android/QuickAction$Orientation;

    sget-object v1, Lnet/londatiga/android/QuickAction$Orientation;->HORIZONTAL:Lnet/londatiga/android/QuickAction$Orientation;

    if-ne v0, v1, :cond_0

    .line 105
    const v0, 0x7f030123

    invoke-virtual {p0, v0}, Lnet/londatiga/android/QuickAction;->setRootViewId(I)V

    .line 110
    :goto_0
    sget-object v0, Lnet/londatiga/android/QuickAction$AnimationStyle;->ANIM_AUTO:Lnet/londatiga/android/QuickAction$AnimationStyle;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mAnimStyle:Lnet/londatiga/android/QuickAction$AnimationStyle;

    .line 111
    iput v2, p0, Lnet/londatiga/android/QuickAction;->mChildPos:I

    .line 112
    return-void

    .line 107
    :cond_0
    const v0, 0x7f030124

    invoke-virtual {p0, v0}, Lnet/londatiga/android/QuickAction;->setRootViewId(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lnet/londatiga/android/QuickAction;)Lnet/londatiga/android/QuickAction$OnActionItemClickListener;
    .locals 1
    .param p0, "x0"    # Lnet/londatiga/android/QuickAction;

    .prologue
    .line 31
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mItemClickListener:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    return-object v0
.end method

.method static synthetic access$102(Lnet/londatiga/android/QuickAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/londatiga/android/QuickAction;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lnet/londatiga/android/QuickAction;->mDidAction:Z

    return p1
.end method

.method private setAnimationStyle(IIZ)V
    .locals 8
    .param p1, "screenWidth"    # I
    .param p2, "requestedX"    # I
    .param p3, "onTop"    # Z

    .prologue
    const v1, 0x7f0e0008

    const v4, 0x7f0e0007

    const v3, 0x7f0e0005

    const v2, 0x7f0e0003

    const v5, 0x7f0e0002

    .line 217
    sget-object v6, Lnet/londatiga/android/QuickAction$2;->$SwitchMap$net$londatiga$android$QuickAction$AnimationStyle:[I

    iget-object v7, p0, Lnet/londatiga/android/QuickAction;->mAnimStyle:Lnet/londatiga/android/QuickAction$AnimationStyle;

    invoke-virtual {v7}, Lnet/londatiga/android/QuickAction$AnimationStyle;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 256
    :goto_0
    :pswitch_0
    return-void

    .line 222
    :pswitch_1
    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 227
    :pswitch_2
    iget-object v2, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_1

    const v1, 0x7f0e000a

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    .line 232
    :pswitch_3
    iget-object v2, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_2

    move v1, v4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_3

    .line 237
    :pswitch_4
    iget-object v2, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_3

    const v1, 0x7f0e0009

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0e0004

    goto :goto_4

    .line 242
    :pswitch_5
    iget-object v6, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v0, p2, v6

    .line 243
    .local v0, "arrowPos":I
    div-int/lit8 v6, p1, 0x4

    if-gt v0, v6, :cond_5

    .line 244
    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_4

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_5

    .line 246
    :cond_5
    div-int/lit8 v1, p1, 0x4

    if-le v0, v1, :cond_7

    div-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_7

    .line 247
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_6

    :goto_6
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_6

    .line 250
    :cond_7
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_8

    const v3, 0x7f0e000a

    :cond_8
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showArrow(II)V
    .locals 5
    .param p1, "whichArrow"    # I
    .param p2, "requestedX"    # I

    .prologue
    const v4, 0x7f0802bc

    .line 399
    if-ne p1, v4, :cond_0

    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 400
    .local v3, "showArrow":Landroid/view/View;
    :goto_0
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    .line 402
    .local v1, "hideArrow":Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 404
    .local v0, "arrowWidth":I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 406
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 408
    .local v2, "param":Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 410
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 411
    return-void

    .line 399
    .end local v0    # "arrowWidth":I
    .end local v1    # "hideArrow":Landroid/view/View;
    .end local v2    # "param":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "showArrow":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_0

    .line 400
    .restart local v3    # "showArrow":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_1
.end method


# virtual methods
.method public addActionItem(Lnet/londatiga/android/ActionItem;)V
    .locals 13
    .param p1, "action"    # Lnet/londatiga/android/ActionItem;

    .prologue
    .line 121
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->actionItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p1}, Lnet/londatiga/android/ActionItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {p1}, Lnet/londatiga/android/ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 128
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mOrientation:Lnet/londatiga/android/QuickAction$Orientation;

    sget-object v10, Lnet/londatiga/android/QuickAction$Orientation;->HORIZONTAL:Lnet/londatiga/android/QuickAction$Orientation;

    if-ne v9, v10, :cond_1

    .line 129
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030018

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 134
    .local v1, "container":Landroid/view/View;
    :goto_0
    const v9, 0x7f080054

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 135
    .local v3, "img":Landroid/widget/ImageView;
    const v9, 0x7f080055

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 137
    .local v7, "text":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :goto_1
    if-eqz v8, :cond_3

    .line 144
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_2
    iget v5, p0, Lnet/londatiga/android/QuickAction;->mChildPos:I

    .line 150
    .local v5, "pos":I
    invoke-virtual {p1}, Lnet/londatiga/android/ActionItem;->getActionId()I

    move-result v0

    .line 152
    .local v0, "actionId":I
    new-instance v9, Lnet/londatiga/android/QuickAction$1;

    invoke-direct {v9, p0, v5, v0}, Lnet/londatiga/android/QuickAction$1;-><init>(Lnet/londatiga/android/QuickAction;II)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mOrientation:Lnet/londatiga/android/QuickAction$Orientation;

    sget-object v10, Lnet/londatiga/android/QuickAction$Orientation;->HORIZONTAL:Lnet/londatiga/android/QuickAction$Orientation;

    if-ne v9, v10, :cond_0

    iget v9, p0, Lnet/londatiga/android/QuickAction;->mChildPos:I

    if-eqz v9, :cond_0

    .line 167
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0300c6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 169
    .local v6, "separator":Landroid/view/View;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 175
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mTrack:Landroid/view/ViewGroup;

    iget v10, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    invoke-virtual {v9, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 177
    iget v9, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    .line 180
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "separator":Landroid/view/View;
    :cond_0
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mTrack:Landroid/view/ViewGroup;

    iget v10, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    invoke-virtual {v9, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 182
    iget v9, p0, Lnet/londatiga/android/QuickAction;->mChildPos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lnet/londatiga/android/QuickAction;->mChildPos:I

    .line 183
    iget v9, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    .line 184
    return-void

    .line 131
    .end local v0    # "actionId":I
    .end local v1    # "container":Landroid/view/View;
    .end local v3    # "img":Landroid/widget/ImageView;
    .end local v5    # "pos":I
    .end local v7    # "text":Landroid/widget/TextView;
    :cond_1
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030019

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "container":Landroid/view/View;
    goto :goto_0

    .line 140
    .restart local v3    # "img":Landroid/widget/ImageView;
    .restart local v7    # "text":Landroid/widget/TextView;
    :cond_2
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 146
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public getActionItem(I)Lnet/londatiga/android/ActionItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->actionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/londatiga/android/ActionItem;

    return-object v0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lnet/londatiga/android/QuickAction;->mDidAction:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mDismissListener:Lnet/londatiga/android/QuickAction$OnDismissListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mDismissListener:Lnet/londatiga/android/QuickAction$OnDismissListener;

    invoke-interface {v0}, Lnet/londatiga/android/QuickAction$OnDismissListener;->onDismiss()V

    .line 203
    :cond_0
    return-void
.end method

.method public setAnimStyle(Lnet/londatiga/android/QuickAction$AnimationStyle;)V
    .locals 0
    .param p1, "mAnimStyle"    # Lnet/londatiga/android/QuickAction$AnimationStyle;

    .prologue
    .line 265
    iput-object p1, p0, Lnet/londatiga/android/QuickAction;->mAnimStyle:Lnet/londatiga/android/QuickAction$AnimationStyle;

    .line 266
    return-void
.end method

.method public setOnActionItemClickListener(Lnet/londatiga/android/QuickAction$OnActionItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    .prologue
    .line 275
    iput-object p1, p0, Lnet/londatiga/android/QuickAction;->mItemClickListener:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    .line 276
    return-void
.end method

.method public setOnDismissListener(Lnet/londatiga/android/QuickAction$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/londatiga/android/QuickAction$OnDismissListener;

    .prologue
    .line 283
    invoke-virtual {p0, p0}, Lnet/londatiga/android/QuickAction;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 285
    iput-object p1, p0, Lnet/londatiga/android/QuickAction;->mDismissListener:Lnet/londatiga/android/QuickAction$OnDismissListener;

    .line 286
    return-void
.end method

.method public setRootViewId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x2

    .line 295
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    .line 296
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    const v1, 0x7f0802ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mTrack:Landroid/view/ViewGroup;

    .line 298
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    const v1, 0x7f0802bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    .line 299
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    const v1, 0x7f0802bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 301
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    const v1, 0x7f0802bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mScroller:Landroid/widget/ScrollView;

    .line 307
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lnet/londatiga/android/QuickAction;->setContentView(Landroid/view/View;)V

    .line 310
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 18
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 317
    invoke-virtual/range {p0 .. p1}, Lnet/londatiga/android/QuickAction;->preShow(Landroid/view/View;)V

    .line 321
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lnet/londatiga/android/QuickAction;->mDidAction:Z

    .line 323
    const/4 v13, 0x2

    new-array v6, v13, [I

    .line 325
    .local v6, "location":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 327
    new-instance v1, Landroid/graphics/Rect;

    const/4 v13, 0x0

    aget v13, v6, v13

    const/4 v14, 0x1

    aget v14, v6, v14

    const/4 v15, 0x0

    aget v15, v6, v15

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    const/16 v16, 0x1

    aget v16, v6, v16

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-direct {v1, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 335
    .local v1, "anchorRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-virtual {v13, v14, v15}, Landroid/view/View;->measure(II)V

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 339
    .local v8, "rootHeight":I
    move-object/from16 v0, p0

    iget v13, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    if-nez v13, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    .line 343
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 344
    .local v10, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 347
    .local v9, "screenHeight":I
    invoke-virtual/range {p0 .. p0}, Lnet/londatiga/android/QuickAction;->isSameWidthAsAnchor()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 348
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .line 359
    .local v11, "xPos":I
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    sub-int v2, v13, v11

    .line 361
    .local v2, "arrowPos":I
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 362
    .local v4, "dyTop":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v9, v13

    .line 364
    .local v3, "dyBottom":I
    if-le v4, v3, :cond_6

    const/4 v7, 0x1

    .line 366
    .local v7, "onTop":Z
    :goto_1
    if-eqz v7, :cond_8

    .line 367
    if-le v8, v4, :cond_7

    .line 368
    const/16 v12, 0xf

    .line 369
    .local v12, "yPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mScroller:Landroid/widget/ScrollView;

    invoke-virtual {v13}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 370
    .local v5, "l":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int v13, v4, v13

    iput v13, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 383
    .end local v5    # "l":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_2
    if-eqz v7, :cond_9

    const v13, 0x7f0802bd

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lnet/londatiga/android/QuickAction;->showArrow(II)V

    .line 385
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v7}, Lnet/londatiga/android/QuickAction;->setAnimationStyle(IIZ)V

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 388
    return-void

    .line 349
    .end local v2    # "arrowPos":I
    .end local v3    # "dyBottom":I
    .end local v4    # "dyTop":I
    .end local v7    # "onTop":Z
    .end local v11    # "xPos":I
    .end local v12    # "yPos":I
    :cond_2
    iget v13, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v14, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    add-int/2addr v13, v14

    if-le v13, v10, :cond_4

    .line 350
    iget v13, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v14, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int v11, v13, v14

    .line 351
    .restart local v11    # "xPos":I
    if-gez v11, :cond_3

    const/4 v11, 0x0

    :cond_3
    goto :goto_0

    .line 353
    .end local v11    # "xPos":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    if-le v13, v14, :cond_5

    .line 354
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    div-int/lit8 v14, v14, 0x2

    sub-int v11, v13, v14

    .restart local v11    # "xPos":I
    goto :goto_0

    .line 356
    .end local v11    # "xPos":I
    :cond_5
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .restart local v11    # "xPos":I
    goto :goto_0

    .line 364
    .restart local v2    # "arrowPos":I
    .restart local v3    # "dyBottom":I
    .restart local v4    # "dyTop":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 372
    .restart local v7    # "onTop":Z
    :cond_7
    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int v12, v13, v8

    .restart local v12    # "yPos":I
    goto :goto_2

    .line 375
    .end local v12    # "yPos":I
    :cond_8
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 377
    .restart local v12    # "yPos":I
    if-le v8, v3, :cond_1

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mScroller:Landroid/widget/ScrollView;

    invoke-virtual {v13}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 379
    .restart local v5    # "l":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 383
    .end local v5    # "l":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    const v13, 0x7f0802bc

    goto :goto_3
.end method
