//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.8-b130911.1802 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2017.01.18 at 09:17:02 AM MST 
//


package topicmap.v2_0;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;choice>
 *         &lt;element ref="{http://www.topicmaps.org/xtm/}topicRef"/>
 *       &lt;/choice>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "topicRef"
})
@XmlRootElement(name = "type")
public class Type {

    protected TopicRef topicRef;

    /**
     * Gets the value of the topicRef property.
     * 
     * @return
     *     possible object is
     *     {@link TopicRef }
     *     
     */
    public TopicRef getTopicRef() {
        return topicRef;
    }

    /**
     * Sets the value of the topicRef property.
     * 
     * @param value
     *     allowed object is
     *     {@link TopicRef }
     *     
     */
    public void setTopicRef(TopicRef value) {
        this.topicRef = value;
    }

}
