.class public final Ltwitter4j/conf/ConfigurationContext;
.super Ljava/lang/Object;
.source "ConfigurationContext.java"


# static fields
.field public static final CONFIGURATION_IMPL:Ljava/lang/String; = "twitter4j.configurationFactory"

.field public static final DEFAULT_CONFIGURATION_FACTORY:Ljava/lang/String; = "twitter4j.conf.PropertyConfigurationFactory"

.field private static final factory:Ltwitter4j/conf/ConfigurationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 34
    :try_start_0
    const-string/jumbo v5, "twitter4j.configurationFactory"

    const-string/jumbo v6, "twitter4j.conf.PropertyConfigurationFactory"

    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    .local v0, "CONFIG_IMPL":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltwitter4j/conf/ConfigurationFactory;

    sput-object v5, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 49
    return-void

    .line 35
    .end local v0    # "CONFIG_IMPL":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 37
    .local v4, "ignore":Ljava/lang/SecurityException;
    const-string/jumbo v0, "twitter4j.conf.PropertyConfigurationFactory"

    .restart local v0    # "CONFIG_IMPL":Ljava/lang/String;
    goto :goto_0

    .line 42
    .end local v4    # "ignore":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 43
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 44
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 45
    .local v3, "ie":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 46
    .end local v3    # "ie":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 47
    .local v2, "iae":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltwitter4j/conf/Configuration;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;

    invoke-interface {v0}, Ltwitter4j/conf/ConfigurationFactory;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;
    .locals 1
    .param p0, "configTreePath"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;

    invoke-interface {v0, p0}, Ltwitter4j/conf/ConfigurationFactory;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object v0

    return-object v0
.end method
