// Generated by gencpp from file mavlink_lora/mavlink_lora_enable_offboard.msg
// DO NOT EDIT!


#ifndef MAVLINK_LORA_MESSAGE_MAVLINK_LORA_ENABLE_OFFBOARD_H
#define MAVLINK_LORA_MESSAGE_MAVLINK_LORA_ENABLE_OFFBOARD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mavlink_lora/mavlink_lora_set_position_target_local_ned.h>

namespace mavlink_lora
{
template <class ContainerAllocator>
struct mavlink_lora_enable_offboard_
{
  typedef mavlink_lora_enable_offboard_<ContainerAllocator> Type;

  mavlink_lora_enable_offboard_()
    : enable(false)
    , target()  {
    }
  mavlink_lora_enable_offboard_(const ContainerAllocator& _alloc)
    : enable(false)
    , target(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _enable_type;
  _enable_type enable;

   typedef  ::mavlink_lora::mavlink_lora_set_position_target_local_ned_<ContainerAllocator>  _target_type;
  _target_type target;





  typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> const> ConstPtr;

}; // struct mavlink_lora_enable_offboard_

typedef ::mavlink_lora::mavlink_lora_enable_offboard_<std::allocator<void> > mavlink_lora_enable_offboard;

typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_enable_offboard > mavlink_lora_enable_offboardPtr;
typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_enable_offboard const> mavlink_lora_enable_offboardConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mavlink_lora

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'mavlink_lora': ['/home/chris/school/ownProjects/gazebo_with_thor/Gazebo/catkin_ws/src/mavlink_lora/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8ac27867a236051af943bfb59e863df3";
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8ac27867a236051aULL;
  static const uint64_t static_value2 = 0xf943bfb59e863df3ULL;
};

template<class ContainerAllocator>
struct DataType< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavlink_lora/mavlink_lora_enable_offboard";
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool enable\n"
"mavlink_lora_set_position_target_local_ned target\n"
"\n"
"================================================================================\n"
"MSG: mavlink_lora/mavlink_lora_set_position_target_local_ned\n"
"uint32 time_boot_ms\n"
"uint8 target_system\n"
"uint8 target_component\n"
"uint8 coordinate_frame\n"
"uint16 type_mask\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 vx\n"
"float64 vy\n"
"float64 vz\n"
"float64 afx\n"
"float64 afy\n"
"float64 afz\n"
"float64 yaw\n"
"float64 yaw_rate\n"
;
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.enable);
      stream.next(m.target);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct mavlink_lora_enable_offboard_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavlink_lora::mavlink_lora_enable_offboard_<ContainerAllocator>& v)
  {
    s << indent << "enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable);
    s << indent << "target: ";
    s << std::endl;
    Printer< ::mavlink_lora::mavlink_lora_set_position_target_local_ned_<ContainerAllocator> >::stream(s, indent + "  ", v.target);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAVLINK_LORA_MESSAGE_MAVLINK_LORA_ENABLE_OFFBOARD_H
