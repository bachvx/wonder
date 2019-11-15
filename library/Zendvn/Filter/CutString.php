<?php
class Zendvn_Filter_CutString implements Zend_Filter_Interface {
	
	protected $_len;
	protected $_more;
	protected $_result;
	
	public function __construct($len,$more = '...'){
		$this->_len		= $len;
		$this->_more	= $more;
	}
	
	public function filter($value) {
		
		if ($value == "" || $value == NULL)
			return $value;
		if (is_array ( $value ))
			return $value;
		$value = trim ( $value );
		if (strlen ( $value ) <= $this->_len)
			return $value;
		$value = substr ( $value, 0, $this->_len );
		if ($value != "") {
			if (! substr_count ( $value, " " )) {
				if ($this->_more)
					$value .= "...";
				return $value;
			}
			while ( strlen ( $value ) && ($value [strlen ( $value ) - 1] != " ") ) {
				$value = substr ( $value, 0, - 1 );
			}
			$value = substr ( $value, 0, - 1 );
			if ($this->_more)
				$value .= "...";
		}
		$this->_result = $value;
		return $this->_result;
	}
}