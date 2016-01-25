.class Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IAPDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/IAPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkspaceAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mResId:I

.field mUrlPrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/aviary/android/feather/widget/IAPDialog;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/widget/IAPDialog;Landroid/content/Context;Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/IAPDialog;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "urlPrefix"    # Ljava/lang/String;
    .param p4, "resource"    # I
    .param p5, "textResourceId"    # I
    .param p6, "objects"    # [Ljava/lang/String;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    .line 522
    invoke-direct {p0, p2, p4, p5, p6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 523
    iput-object p3, p0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->mUrlPrefix:Ljava/lang/String;

    .line 524
    iput p4, p0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->mResId:I

    .line 525
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 526
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 534
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    iget v2, v2, Lcom/aviary/android/feather/widget/IAPDialog;->mItemsPerPage:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 543
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getUrlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->mUrlPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 549
    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/widget/IAPDialog;->access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getView: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", convertView: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v14, v15}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 551
    if-nez p2, :cond_0

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->mResId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    move-object/from16 v16, v0

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mWorkspace:Lcom/aviary/android/feather/widget/AviaryWorkspace;
    invoke-static/range {v16 .. v16}, Lcom/aviary/android/feather/widget/IAPDialog;->access$900(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/widget/AviaryWorkspace;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object/from16 v3, p2

    .line 555
    check-cast v3, Lcom/aviary/android/feather/widget/CellLayout;

    .line 556
    .local v3, "cell":Lcom/aviary/android/feather/widget/CellLayout;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    iget v14, v14, Lcom/aviary/android/feather/widget/IAPDialog;->mCols:I

    invoke-virtual {v3, v14}, Lcom/aviary/android/feather/widget/CellLayout;->setNumCols(I)V

    .line 557
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    iget v14, v14, Lcom/aviary/android/feather/widget/IAPDialog;->mRows:I

    invoke-virtual {v3, v14}, Lcom/aviary/android/feather/widget/CellLayout;->setNumRows(I)V

    .line 559
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    iget v14, v14, Lcom/aviary/android/feather/widget/IAPDialog;->mItemsPerPage:I

    if-ge v5, v14, :cond_8

    .line 561
    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/CellLayout;->findVacantCell()Lcom/aviary/android/feather/widget/CellLayout$CellInfo;

    move-result-object v4

    .line 563
    .local v4, "cellInfo":Lcom/aviary/android/feather/widget/CellLayout$CellInfo;
    if-nez v4, :cond_3

    .line 564
    invoke-virtual {v3, v5}, Lcom/aviary/android/feather/widget/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 572
    .local v12, "toolView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    iget v14, v14, Lcom/aviary/android/feather/widget/IAPDialog;->mItemsPerPage:I

    mul-int v14, v14, p1

    add-int v7, v14, v5

    .line 573
    .local v7, "index":I
    sget v14, Lcom/aviary/android/feather/R$id;->aviary_image:I

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 574
    .local v6, "imageView":Landroid/widget/ImageView;
    sget v14, Lcom/aviary/android/feather/R$id;->aviary_progress:I

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 576
    .local v10, "progress":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->getRealCount()I

    move-result v14

    if-ge v7, v14, :cond_6

    .line 577
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->getUrlPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 578
    .local v13, "url":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 580
    .local v11, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mDownloadOnDemand:Z
    invoke-static {v14}, Lcom/aviary/android/feather/widget/IAPDialog;->access$1100(Lcom/aviary/android/feather/widget/IAPDialog;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 582
    if-eqz v11, :cond_1

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 583
    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 584
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 559
    .end local v11    # "tag":Ljava/lang/String;
    .end local v13    # "url":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 566
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v7    # "index":I
    .end local v10    # "progress":Landroid/view/View;
    .end local v12    # "toolView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mCellResId:I
    invoke-static {v15}, Lcom/aviary/android/feather/widget/IAPDialog;->access$1000(Lcom/aviary/android/feather/widget/IAPDialog;)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v14, v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 567
    .restart local v12    # "toolView":Landroid/view/View;
    new-instance v9, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;

    iget v14, v4, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->cellX:I

    iget v15, v4, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->cellY:I

    iget v0, v4, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->spanH:I

    move/from16 v16, v0

    iget v0, v4, Lcom/aviary/android/feather/widget/CellLayout$CellInfo;->spanV:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v14, v15, v0, v1}, Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;-><init>(IIII)V

    .line 569
    .local v9, "lp":Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;
    const/4 v14, -0x1

    invoke-virtual {v3, v12, v14, v9}, Lcom/aviary/android/feather/widget/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 588
    .end local v9    # "lp":Lcom/aviary/android/feather/widget/CellLayout$LayoutParams;
    .restart local v6    # "imageView":Landroid/widget/ImageView;
    .restart local v7    # "index":I
    .restart local v10    # "progress":Landroid/view/View;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v13    # "url":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;
    invoke-static {v14}, Lcom/aviary/android/feather/widget/IAPDialog;->access$1200(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/library/services/ThreadPoolService;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 590
    if-eqz v10, :cond_5

    .line 591
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :cond_5
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 595
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 596
    new-instance v2, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mCacheService:Lcom/aviary/android/feather/library/services/ImageCacheService;
    invoke-static {v14}, Lcom/aviary/android/feather/widget/IAPDialog;->access$1300(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/library/services/ImageCacheService;

    move-result-object v14

    const/4 v15, 0x1

    invoke-direct {v2, v14, v15}, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;-><init>(Lcom/aviary/android/feather/library/services/ImageCacheService;Z)V

    .line 597
    .local v2, "callable":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;
    new-instance v8, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-direct {v8, v14, v6, v13}, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;-><init>(Lcom/aviary/android/feather/widget/IAPDialog;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 598
    .local v8, "listener":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aviary/android/feather/widget/IAPDialog$WorkspaceAdapter;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mThreadService:Lcom/aviary/android/feather/library/services/ThreadPoolService;
    invoke-static {v14}, Lcom/aviary/android/feather/widget/IAPDialog;->access$1200(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/library/services/ThreadPoolService;

    move-result-object v14

    invoke-virtual {v14, v2, v8, v13}, Lcom/aviary/android/feather/library/services/ThreadPoolService;->submit(Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;Lcom/aviary/android/feather/library/services/FutureListener;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    goto :goto_2

    .line 602
    .end local v2    # "callable":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoader;
    .end local v8    # "listener":Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v13    # "url":Ljava/lang/String;
    :cond_6
    if-eqz v10, :cond_7

    .line 603
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 605
    :cond_7
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 606
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 610
    .end local v4    # "cellInfo":Lcom/aviary/android/feather/widget/CellLayout$CellInfo;
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v7    # "index":I
    .end local v10    # "progress":Landroid/view/View;
    .end local v12    # "toolView":Landroid/view/View;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestLayout()V

    .line 611
    return-object p2
.end method
