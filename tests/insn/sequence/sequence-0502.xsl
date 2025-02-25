<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: sequence op:concatenate of nodes and for clause -->

   <t:template match="doc">
      <out>
         <t:text>(</t:text>
         <t:for-each select="(list[@id='list1']/item,                             for $y in list[@id='list2']/item return $y)">
            <t:value-of select="."/>
            <t:if test="not(last()=position())">
               <t:text>|</t:text>
            </t:if>
         </t:for-each>
         <t:text>)</t:text>
      </out>
   </t:template>
</t:transform>
