/*
 * generated by Xtext 2.17.1
 */
grammar InternalSpecDSL;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package com.specmate.cause_effect_patterns.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package com.specmate.cause_effect_patterns.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import com.specmate.cause_effect_patterns.services.SpecDSLGrammarAccess;

}

@parser::members {

 	private SpecDSLGrammarAccess grammarAccess;

    public InternalSpecDSLParser(TokenStream input, SpecDSLGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected SpecDSLGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getModelAccess().getElementsAbstractElementParserRuleCall_0());
			}
			lv_elements_0_0=ruleAbstractElement
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getModelRule());
				}
				add(
					$current,
					"elements",
					lv_elements_0_0,
					"com.specmate.cause_effect_patterns.SpecDSL.AbstractElement");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleAbstractElement
entryRuleAbstractElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAbstractElementRule()); }
	iv_ruleAbstractElement=ruleAbstractElement
	{ $current=$iv_ruleAbstractElement.current; }
	EOF;

// Rule AbstractElement
ruleAbstractElement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getAbstractElementAccess().getImportParserRuleCall_0());
		}
		this_Import_0=ruleImport
		{
			$current = $this_Import_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAbstractElementAccess().getPosDefParserRuleCall_1());
		}
		this_PosDef_1=rulePosDef
		{
			$current = $this_PosDef_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAbstractElementAccess().getDepDefParserRuleCall_2());
		}
		this_DepDef_2=ruleDepDef
		{
			$current = $this_DepDef_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAbstractElementAccess().getTreeDefParserRuleCall_3());
		}
		this_TreeDef_3=ruleTreeDef
		{
			$current = $this_TreeDef_3.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAbstractElementAccess().getRuleParserRuleCall_4());
		}
		this_Rule_4=ruleRule
		{
			$current = $this_Rule_4.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleImport
entryRuleImport returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getImportRule()); }
	iv_ruleImport=ruleImport
	{ $current=$iv_ruleImport.current; }
	EOF;

// Rule Import
ruleImport returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='import'
		{
			newLeafNode(otherlv_0, grammarAccess.getImportAccess().getImportKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getImportAccess().getImportedNamespaceQualifiedNameWithWildcardParserRuleCall_1_0());
				}
				lv_importedNamespace_1_0=ruleQualifiedNameWithWildcard
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getImportRule());
					}
					set(
						$current,
						"importedNamespace",
						lv_importedNamespace_1_0,
						"com.specmate.cause_effect_patterns.SpecDSL.QualifiedNameWithWildcard");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRulePosDef
entryRulePosDef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPosDefRule()); }
	iv_rulePosDef=rulePosDef
	{ $current=$iv_rulePosDef.current; }
	EOF;

// Rule PosDef
rulePosDef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='def'
		{
			newLeafNode(otherlv_0, grammarAccess.getPosDefAccess().getDefKeyword_0());
		}
		otherlv_1='tagset'
		{
			newLeafNode(otherlv_1, grammarAccess.getPosDefAccess().getTagsetKeyword_1());
		}
		otherlv_2='parts-of-speech'
		{
			newLeafNode(otherlv_2, grammarAccess.getPosDefAccess().getPartsOfSpeechKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPosDefAccess().getNameQualifiedNameParserRuleCall_3_0());
				}
				lv_name_3_0=ruleQualifiedName
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPosDefRule());
					}
					set(
						$current,
						"name",
						lv_name_3_0,
						"com.specmate.cause_effect_patterns.SpecDSL.QualifiedName");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_4='{'
		{
			newLeafNode(otherlv_4, grammarAccess.getPosDefAccess().getLeftCurlyBracketKeyword_4());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPosDefAccess().getTagsPOSTagParserRuleCall_5_0());
				}
				lv_tags_5_0=rulePOSTag
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPosDefRule());
					}
					add(
						$current,
						"tags",
						lv_tags_5_0,
						"com.specmate.cause_effect_patterns.SpecDSL.POSTag");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_6='}'
		{
			newLeafNode(otherlv_6, grammarAccess.getPosDefAccess().getRightCurlyBracketKeyword_6());
		}
	)
;

// Entry rule entryRulePOSTag
entryRulePOSTag returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPOSTagRule()); }
	iv_rulePOSTag=rulePOSTag
	{ $current=$iv_rulePOSTag.current; }
	EOF;

// Rule POSTag
rulePOSTag returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0=RULE_ID
				{
					newLeafNode(lv_name_0_0, grammarAccess.getPOSTagAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getPOSTagRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			otherlv_1='='
			{
				newLeafNode(otherlv_1, grammarAccess.getPOSTagAccess().getEqualsSignKeyword_1_0());
			}
			(
				(
					lv_tagname_2_0=RULE_STRING
					{
						newLeafNode(lv_tagname_2_0, grammarAccess.getPOSTagAccess().getTagnameSTRINGTerminalRuleCall_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getPOSTagRule());
						}
						setWithLastConsumed(
							$current,
							"tagname",
							lv_tagname_2_0,
							"org.eclipse.xtext.common.Terminals.STRING");
					}
				)
			)
		)?
	)
;

// Entry rule entryRuleDepDef
entryRuleDepDef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDepDefRule()); }
	iv_ruleDepDef=ruleDepDef
	{ $current=$iv_ruleDepDef.current; }
	EOF;

// Rule DepDef
ruleDepDef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='def'
		{
			newLeafNode(otherlv_0, grammarAccess.getDepDefAccess().getDefKeyword_0());
		}
		otherlv_1='tagset'
		{
			newLeafNode(otherlv_1, grammarAccess.getDepDefAccess().getTagsetKeyword_1());
		}
		otherlv_2='dependencies'
		{
			newLeafNode(otherlv_2, grammarAccess.getDepDefAccess().getDependenciesKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getDepDefAccess().getNameQualifiedNameParserRuleCall_3_0());
				}
				lv_name_3_0=ruleQualifiedName
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDepDefRule());
					}
					set(
						$current,
						"name",
						lv_name_3_0,
						"com.specmate.cause_effect_patterns.SpecDSL.QualifiedName");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_4='{'
		{
			newLeafNode(otherlv_4, grammarAccess.getDepDefAccess().getLeftCurlyBracketKeyword_4());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getDepDefAccess().getTagsDepTagParserRuleCall_5_0());
				}
				lv_tags_5_0=ruleDepTag
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDepDefRule());
					}
					add(
						$current,
						"tags",
						lv_tags_5_0,
						"com.specmate.cause_effect_patterns.SpecDSL.DepTag");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_6='}'
		{
			newLeafNode(otherlv_6, grammarAccess.getDepDefAccess().getRightCurlyBracketKeyword_6());
		}
	)
;

// Entry rule entryRuleDepTag
entryRuleDepTag returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDepTagRule()); }
	iv_ruleDepTag=ruleDepTag
	{ $current=$iv_ruleDepTag.current; }
	EOF;

// Rule DepTag
ruleDepTag returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0=RULE_ID
				{
					newLeafNode(lv_name_0_0, grammarAccess.getDepTagAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getDepTagRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			otherlv_1='='
			{
				newLeafNode(otherlv_1, grammarAccess.getDepTagAccess().getEqualsSignKeyword_1_0());
			}
			(
				(
					lv_tagname_2_0=RULE_STRING
					{
						newLeafNode(lv_tagname_2_0, grammarAccess.getDepTagAccess().getTagnameSTRINGTerminalRuleCall_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getDepTagRule());
						}
						setWithLastConsumed(
							$current,
							"tagname",
							lv_tagname_2_0,
							"org.eclipse.xtext.common.Terminals.STRING");
					}
				)
			)
		)?
	)
;

// Entry rule entryRuleTreeDef
entryRuleTreeDef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTreeDefRule()); }
	iv_ruleTreeDef=ruleTreeDef
	{ $current=$iv_ruleTreeDef.current; }
	EOF;

// Rule TreeDef
ruleTreeDef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getTreeDefAccess().getTreeDefAction_0(),
					$current);
			}
		)
		otherlv_1='def'
		{
			newLeafNode(otherlv_1, grammarAccess.getTreeDefAccess().getDefKeyword_1());
		}
		otherlv_2='subtrees'
		{
			newLeafNode(otherlv_2, grammarAccess.getTreeDefAccess().getSubtreesKeyword_2());
		}
		(
			(
				otherlv_3='{'
				{
					newLeafNode(otherlv_3, grammarAccess.getTreeDefAccess().getLeftCurlyBracketKeyword_3_0_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getTreeDefAccess().getTreesTreeTagParserRuleCall_3_0_1_0());
						}
						lv_trees_4_0=ruleTreeTag
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getTreeDefRule());
							}
							add(
								$current,
								"trees",
								lv_trees_4_0,
								"com.specmate.cause_effect_patterns.SpecDSL.TreeTag");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				otherlv_5='}'
				{
					newLeafNode(otherlv_5, grammarAccess.getTreeDefAccess().getRightCurlyBracketKeyword_3_0_2());
				}
			)
			    |
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getTreeDefAccess().getTreesTreeTagParserRuleCall_3_1_0_0());
						}
						lv_trees_6_0=ruleTreeTag
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getTreeDefRule());
							}
							add(
								$current,
								"trees",
								lv_trees_6_0,
								"com.specmate.cause_effect_patterns.SpecDSL.TreeTag");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					otherlv_7=','
					{
						newLeafNode(otherlv_7, grammarAccess.getTreeDefAccess().getCommaKeyword_3_1_1_0());
					}
					(
						(
							{
								newCompositeNode(grammarAccess.getTreeDefAccess().getTreesTreeTagParserRuleCall_3_1_1_1_0());
							}
							lv_trees_8_0=ruleTreeTag
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getTreeDefRule());
								}
								add(
									$current,
									"trees",
									lv_trees_8_0,
									"com.specmate.cause_effect_patterns.SpecDSL.TreeTag");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)*
			)
		)
	)
;

// Entry rule entryRuleTreeTag
entryRuleTreeTag returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTreeTagRule()); }
	iv_ruleTreeTag=ruleTreeTag
	{ $current=$iv_ruleTreeTag.current; }
	EOF;

// Rule TreeTag
ruleTreeTag returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0=RULE_ID
			{
				newLeafNode(lv_name_0_0, grammarAccess.getTreeTagAccess().getNameIDTerminalRuleCall_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getTreeTagRule());
				}
				setWithLastConsumed(
					$current,
					"name",
					lv_name_0_0,
					"org.eclipse.xtext.common.Terminals.ID");
			}
		)
	)
;

// Entry rule entryRuleRule
entryRuleRule returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRuleRule()); }
	iv_ruleRule=ruleRule
	{ $current=$iv_ruleRule.current; }
	EOF;

// Rule Rule
ruleRule returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='def'
		{
			newLeafNode(otherlv_0, grammarAccess.getRuleAccess().getDefKeyword_0());
		}
		otherlv_1='rule'
		{
			newLeafNode(otherlv_1, grammarAccess.getRuleAccess().getRuleKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getRuleAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getRuleRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_3='{'
		{
			newLeafNode(otherlv_3, grammarAccess.getRuleAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getRuleAccess().getDependenciesDependencyRuleParserRuleCall_4_0());
				}
				lv_dependencies_4_0=ruleDependencyRule
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRuleRule());
					}
					add(
						$current,
						"dependencies",
						lv_dependencies_4_0,
						"com.specmate.cause_effect_patterns.SpecDSL.DependencyRule");
					afterParserOrEnumRuleCall();
				}
			)
		)+
		otherlv_5='}'
		{
			newLeafNode(otherlv_5, grammarAccess.getRuleAccess().getRightCurlyBracketKeyword_5());
		}
	)
;

// Entry rule entryRuleDependencyRule
entryRuleDependencyRule returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDependencyRuleRule()); }
	iv_ruleDependencyRule=ruleDependencyRule
	{ $current=$iv_ruleDependencyRule.current; }
	EOF;

// Rule DependencyRule
ruleDependencyRule returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getDependencyRuleAccess().getLeftNodeTreeNodeParserRuleCall_0_0_0());
					}
					lv_leftNode_0_0=ruleTreeNode
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getDependencyRuleRule());
						}
						set(
							$current,
							"leftNode",
							lv_leftNode_0_0,
							"com.specmate.cause_effect_patterns.SpecDSL.TreeNode");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_1='-'
			{
				newLeafNode(otherlv_1, grammarAccess.getDependencyRuleAccess().getHyphenMinusKeyword_0_1());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getDependencyRuleRule());
						}
					}
					{
						newCompositeNode(grammarAccess.getDependencyRuleAccess().getDTagDepTagCrossReference_0_2_0());
					}
					ruleQualifiedName
					{
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_3='->'
			{
				newLeafNode(otherlv_3, grammarAccess.getDependencyRuleAccess().getHyphenMinusGreaterThanSignKeyword_0_3());
			}
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getDependencyRuleAccess().getRightNodeNodeParserRuleCall_0_4_0_0());
						}
						lv_rightNode_4_1=ruleNode
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getDependencyRuleRule());
							}
							set(
								$current,
								"rightNode",
								lv_rightNode_4_1,
								"com.specmate.cause_effect_patterns.SpecDSL.Node");
							afterParserOrEnumRuleCall();
						}
						    |
						{
							newCompositeNode(grammarAccess.getDependencyRuleAccess().getRightNodeFreeDependencyRuleParserRuleCall_0_4_0_1());
						}
						lv_rightNode_4_2=ruleFreeDependencyRule
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getDependencyRuleRule());
							}
							set(
								$current,
								"rightNode",
								lv_rightNode_4_2,
								"com.specmate.cause_effect_patterns.SpecDSL.FreeDependencyRule");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
		)
		    |
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getDependencyRuleAccess().getLeftNodeNonTreeNodeParserRuleCall_1_0_0());
					}
					lv_leftNode_5_0=ruleNonTreeNode
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getDependencyRuleRule());
						}
						set(
							$current,
							"leftNode",
							lv_leftNode_5_0,
							"com.specmate.cause_effect_patterns.SpecDSL.NonTreeNode");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_6='-'
			{
				newLeafNode(otherlv_6, grammarAccess.getDependencyRuleAccess().getHyphenMinusKeyword_1_1());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getDependencyRuleRule());
						}
					}
					{
						newCompositeNode(grammarAccess.getDependencyRuleAccess().getDTagDepTagCrossReference_1_2_0());
					}
					ruleQualifiedName
					{
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_8='->'
			{
				newLeafNode(otherlv_8, grammarAccess.getDependencyRuleAccess().getHyphenMinusGreaterThanSignKeyword_1_3());
			}
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getDependencyRuleAccess().getRightNodeTreeNodeParserRuleCall_1_4_0_0());
						}
						lv_rightNode_9_1=ruleTreeNode
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getDependencyRuleRule());
							}
							set(
								$current,
								"rightNode",
								lv_rightNode_9_1,
								"com.specmate.cause_effect_patterns.SpecDSL.TreeNode");
							afterParserOrEnumRuleCall();
						}
						    |
						{
							newCompositeNode(grammarAccess.getDependencyRuleAccess().getRightNodeDependencyRuleParserRuleCall_1_4_0_1());
						}
						lv_rightNode_9_2=ruleDependencyRule
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getDependencyRuleRule());
							}
							set(
								$current,
								"rightNode",
								lv_rightNode_9_2,
								"com.specmate.cause_effect_patterns.SpecDSL.DependencyRule");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
		)
	)
;

// Entry rule entryRuleFreeDependencyRule
entryRuleFreeDependencyRule returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getFreeDependencyRuleRule()); }
	iv_ruleFreeDependencyRule=ruleFreeDependencyRule
	{ $current=$iv_ruleFreeDependencyRule.current; }
	EOF;

// Rule FreeDependencyRule
ruleFreeDependencyRule returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getFreeDependencyRuleAccess().getLeftNodeNodeParserRuleCall_0_0());
				}
				lv_leftNode_0_0=ruleNode
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getFreeDependencyRuleRule());
					}
					set(
						$current,
						"leftNode",
						lv_leftNode_0_0,
						"com.specmate.cause_effect_patterns.SpecDSL.Node");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='-'
		{
			newLeafNode(otherlv_1, grammarAccess.getFreeDependencyRuleAccess().getHyphenMinusKeyword_1());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFreeDependencyRuleRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getFreeDependencyRuleAccess().getDTagDepTagCrossReference_2_0());
				}
				ruleQualifiedName
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3='->'
		{
			newLeafNode(otherlv_3, grammarAccess.getFreeDependencyRuleAccess().getHyphenMinusGreaterThanSignKeyword_3());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getFreeDependencyRuleAccess().getRightNodeNodeParserRuleCall_4_0_0());
					}
					lv_rightNode_4_1=ruleNode
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getFreeDependencyRuleRule());
						}
						set(
							$current,
							"rightNode",
							lv_rightNode_4_1,
							"com.specmate.cause_effect_patterns.SpecDSL.Node");
						afterParserOrEnumRuleCall();
					}
					    |
					{
						newCompositeNode(grammarAccess.getFreeDependencyRuleAccess().getRightNodeFreeDependencyRuleParserRuleCall_4_0_1());
					}
					lv_rightNode_4_2=ruleFreeDependencyRule
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getFreeDependencyRuleRule());
						}
						set(
							$current,
							"rightNode",
							lv_rightNode_4_2,
							"com.specmate.cause_effect_patterns.SpecDSL.FreeDependencyRule");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
	)
;

// Entry rule entryRuleNode
entryRuleNode returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNodeRule()); }
	iv_ruleNode=ruleNode
	{ $current=$iv_ruleNode.current; }
	EOF;

// Rule Node
ruleNode returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getNodeAccess().getExplicitNodeParserRuleCall_0());
		}
		this_ExplicitNode_0=ruleExplicitNode
		{
			$current = $this_ExplicitNode_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getNodeAccess().getOptionNodeParserRuleCall_1());
		}
		this_OptionNode_1=ruleOptionNode
		{
			$current = $this_OptionNode_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getNodeAccess().getTreeNodeParserRuleCall_2());
		}
		this_TreeNode_2=ruleTreeNode
		{
			$current = $this_TreeNode_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleNonTreeNode
entryRuleNonTreeNode returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNonTreeNodeRule()); }
	iv_ruleNonTreeNode=ruleNonTreeNode
	{ $current=$iv_ruleNonTreeNode.current; }
	EOF;

// Rule NonTreeNode
ruleNonTreeNode returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getNonTreeNodeAccess().getExplicitNodeParserRuleCall_0());
		}
		this_ExplicitNode_0=ruleExplicitNode
		{
			$current = $this_ExplicitNode_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getNonTreeNodeAccess().getOptionNodeParserRuleCall_1());
		}
		this_OptionNode_1=ruleOptionNode
		{
			$current = $this_OptionNode_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleOptionNode
entryRuleOptionNode returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOptionNodeRule()); }
	iv_ruleOptionNode=ruleOptionNode
	{ $current=$iv_ruleOptionNode.current; }
	EOF;

// Rule OptionNode
ruleOptionNode returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='('
		{
			newLeafNode(otherlv_0, grammarAccess.getOptionNodeAccess().getLeftParenthesisKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getOptionNodeAccess().getLeftNodeExplicitNodeParserRuleCall_1_0());
				}
				lv_leftNode_1_0=ruleExplicitNode
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getOptionNodeRule());
					}
					set(
						$current,
						"leftNode",
						lv_leftNode_1_0,
						"com.specmate.cause_effect_patterns.SpecDSL.ExplicitNode");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_2='|'
			{
				newLeafNode(otherlv_2, grammarAccess.getOptionNodeAccess().getVerticalLineKeyword_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getOptionNodeAccess().getRightNodesExplicitNodeParserRuleCall_2_1_0());
					}
					lv_rightNodes_3_0=ruleExplicitNode
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getOptionNodeRule());
						}
						add(
							$current,
							"rightNodes",
							lv_rightNodes_3_0,
							"com.specmate.cause_effect_patterns.SpecDSL.ExplicitNode");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)+
		otherlv_4=')'
		{
			newLeafNode(otherlv_4, grammarAccess.getOptionNodeAccess().getRightParenthesisKeyword_3());
		}
	)
;

// Entry rule entryRuleTreeNode
entryRuleTreeNode returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTreeNodeRule()); }
	iv_ruleTreeNode=ruleTreeNode
	{ $current=$iv_ruleTreeNode.current; }
	EOF;

// Rule TreeNode
ruleTreeNode returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getTreeNodeRule());
						}
					}
					{
						newCompositeNode(grammarAccess.getTreeNodeAccess().getPTagPOSTagCrossReference_0_0_0());
					}
					ruleQualifiedName
					{
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_1=':'
			{
				newLeafNode(otherlv_1, grammarAccess.getTreeNodeAccess().getColonKeyword_0_1());
			}
		)?
		(
			(
				(
					(
						lv_expr_2_0=RULE_STRING
						{
							newLeafNode(lv_expr_2_0, grammarAccess.getTreeNodeAccess().getExprSTRINGTerminalRuleCall_1_0_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getTreeNodeRule());
							}
							setWithLastConsumed(
								$current,
								"expr",
								lv_expr_2_0,
								"org.eclipse.xtext.common.Terminals.STRING");
						}
					)
				)
				    |
				(
					(
						lv_anyMatch_3_0='*'
						{
							newLeafNode(lv_anyMatch_3_0, grammarAccess.getTreeNodeAccess().getAnyMatchAsteriskKeyword_1_0_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getTreeNodeRule());
							}
							setWithLastConsumed($current, "anyMatch", true, "*");
						}
					)
				)
			)
			otherlv_4=':'
			{
				newLeafNode(otherlv_4, grammarAccess.getTreeNodeAccess().getColonKeyword_1_1());
			}
		)?
		(
			(
				{
					newCompositeNode(grammarAccess.getTreeNodeAccess().getTreeSubtreeParserRuleCall_2_0());
				}
				lv_tree_5_0=ruleSubtree
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTreeNodeRule());
					}
					set(
						$current,
						"tree",
						lv_tree_5_0,
						"com.specmate.cause_effect_patterns.SpecDSL.Subtree");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleExplicitNode
entryRuleExplicitNode returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getExplicitNodeRule()); }
	iv_ruleExplicitNode=ruleExplicitNode
	{ $current=$iv_ruleExplicitNode.current; }
	EOF;

// Rule ExplicitNode
ruleExplicitNode returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getExplicitNodeRule());
						}
					}
					{
						newCompositeNode(grammarAccess.getExplicitNodeAccess().getPTagPOSTagCrossReference_0_0_0());
					}
					ruleQualifiedName
					{
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_1=':'
			{
				newLeafNode(otherlv_1, grammarAccess.getExplicitNodeAccess().getColonKeyword_0_1());
			}
		)?
		(
			(
				(
					(
						lv_caseSensitive_2_0='CASE!'
						{
							newLeafNode(lv_caseSensitive_2_0, grammarAccess.getExplicitNodeAccess().getCaseSensitiveCASEKeyword_1_0_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getExplicitNodeRule());
							}
							setWithLastConsumed($current, "caseSensitive", true, "CASE!");
						}
					)
				)?
				(
					(
						lv_expr_3_0=RULE_STRING
						{
							newLeafNode(lv_expr_3_0, grammarAccess.getExplicitNodeAccess().getExprSTRINGTerminalRuleCall_1_0_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getExplicitNodeRule());
							}
							setWithLastConsumed(
								$current,
								"expr",
								lv_expr_3_0,
								"org.eclipse.xtext.common.Terminals.STRING");
						}
					)
				)
			)
			    |
			(
				(
					lv_anyMatch_4_0='*'
					{
						newLeafNode(lv_anyMatch_4_0, grammarAccess.getExplicitNodeAccess().getAnyMatchAsteriskKeyword_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getExplicitNodeRule());
						}
						setWithLastConsumed($current, "anyMatch", true, "*");
					}
				)
			)
		)
	)
;

// Entry rule entryRuleSubtree
entryRuleSubtree returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSubtreeRule()); }
	iv_ruleSubtree=ruleSubtree
	{ $current=$iv_ruleSubtree.current; }
	EOF;

// Rule Subtree
ruleSubtree returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='['
		{
			newLeafNode(otherlv_0, grammarAccess.getSubtreeAccess().getLeftSquareBracketKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSubtreeRule());
					}
				}
				otherlv_1=RULE_ID
				{
					newLeafNode(otherlv_1, grammarAccess.getSubtreeAccess().getNameTreeTagCrossReference_1_0());
				}
			)
		)
		otherlv_2=']'
		{
			newLeafNode(otherlv_2, grammarAccess.getSubtreeAccess().getRightSquareBracketKeyword_2());
		}
	)
;

// Entry rule entryRuleQualifiedName
entryRuleQualifiedName returns [String current=null]:
	{ newCompositeNode(grammarAccess.getQualifiedNameRule()); }
	iv_ruleQualifiedName=ruleQualifiedName
	{ $current=$iv_ruleQualifiedName.current.getText(); }
	EOF;

// Rule QualifiedName
ruleQualifiedName returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_ID_0=RULE_ID
		{
			$current.merge(this_ID_0);
		}
		{
			newLeafNode(this_ID_0, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0());
		}
		(
			kw='.'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0());
			}
			this_ID_2=RULE_ID
			{
				$current.merge(this_ID_2);
			}
			{
				newLeafNode(this_ID_2, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1());
			}
		)*
	)
;

// Entry rule entryRuleQualifiedNameWithWildcard
entryRuleQualifiedNameWithWildcard returns [String current=null]:
	{ newCompositeNode(grammarAccess.getQualifiedNameWithWildcardRule()); }
	iv_ruleQualifiedNameWithWildcard=ruleQualifiedNameWithWildcard
	{ $current=$iv_ruleQualifiedNameWithWildcard.current.getText(); }
	EOF;

// Rule QualifiedNameWithWildcard
ruleQualifiedNameWithWildcard returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getQualifiedNameWithWildcardAccess().getQualifiedNameParserRuleCall_0());
		}
		this_QualifiedName_0=ruleQualifiedName
		{
			$current.merge(this_QualifiedName_0);
		}
		{
			afterParserOrEnumRuleCall();
		}
		(
			kw='.'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getQualifiedNameWithWildcardAccess().getFullStopKeyword_1_0());
			}
			kw='*'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getQualifiedNameWithWildcardAccess().getAsteriskKeyword_1_1());
			}
		)?
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;